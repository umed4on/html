<?php

/**
 * Пример обработки запроса на биллинг
 * Class DemoBill
 */
class DemoBill
{
    public $salt = null;
    
    const REPLY_SING_FAIL = 'sign_not_found';
    const REPLY_SESSION_FAIL = 'session_not_found';
    const REPLY_MONEY_FAIL = 'not_enough_money';
    const REPLY_OK = 'OK';
    
    const KEY_SIGN = 'sign';
    const KEY_SESSION = 'session';
    const KEY_TRX = 'trx_id';
    
    /**
     * Обраотка запроса на операцию с балансом пользователя
     * @return array
     */
    public function billDo()
    {
        $jsonText = file_get_contents("php://input");
        $json = json_decode($jsonText, true);
        echo $json["trx_id"]; 
        // Если тело запроса пустое
        if (empty($json)
            || empty($json[self::KEY_SESSION])
            || empty($json[self::KEY_TRX])
        ) {
            return $this->returnAnswer(self::REPLY_SESSION_FAIL);;
        }
        
        // Проверка подписи
        if (!$this->_checkSalt($json)) {
            return $this->returnAnswer(self::REPLY_SING_FAIL);
        }
        
        /** @var Users $user */
        $user = Users::findOneBySession($json[self::KEY_SESSION]);
        if (!$user) {
            return $this->returnAnswer(self::REPLY_SESSION_FAIL);
        }
        
        // Если недостаточно средств
        if ($json['minus'] > $user->getMoney()) {
            $this->returnAnswer(self::REPLY_MONEY_FAIL, $user->getMoney(), $user->getCurrency());
        }
        
        // фиксация баланса
        $user->setMoney($user->getMoney() - $json['minus']);
        $user->setMoney($user->getMoney() + $json['plus']);
        $user->save();
        
        
        return $this->returnAnswer(self::REPLY_OK, $user->getMoney(), $user->getCurrency());
    }
    
    /**
     * Проверка подписи
     * @param array $json
     * @return bool
     */
    private function _checkSalt(array $json)
    {
        $str = "do::".$json[self::KEY_SESSION]."::".$json[self::KEY_TRX]."::".$this->salt;
        for($i=1; $i<=45; $i++) {
            $str = md5($str);
        }
        if ($str == $json[self::KEY_SIGN]) {
            return true;
        }
        return false;
    }
    
    /**
     * Подготовка ответа на запрос
     * @param string $status
     * @param array $moreData
     * @return array
     */
    private function returnAnswer($status, $balance = null, $currency = null, array $moreData = array())
    {
        $_return = array('status' => $status);
        
        if (!empty($balance)) {
            $_return['balance'] = $balance;
        }
        if (!empty($currency)) {
            $_return['currency'] = $currency;
        }
        
        if (!empty($moreData)) {
            if (!empty($moreData['status'])) {
                unset($moreData['status']);
            }
            $_return = array_merge($_return, $moreData);
        }
        return $_return;
    }
}
