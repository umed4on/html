<?php

/**
 * Демо модель
 *
 */
class Users
{
    private $_money;
    
    public function __construct()
    {
        $this->_money = rand(0, 100000);
    }
    
    /**
     * @param string $session
     * @return bool|Users
     */
    public static function findOneBySession($session)
    {
        if (!empty($session)) {
            return new Users();
        }
        return false;
    }
    
    /**
     * @param $trxId
     */
    public function checkTransaction($trxId)
    {
    
    }
    
    public function setMoney($amount)
    {
        $this->_money = $amount;
    }
    
    public function getMoney()
    {
        return $this->_money;
    }
    
    public function getCurrency()
    {
        return 'RUR';
    }
    
    public function save()
    {
        return true;
    }
}
