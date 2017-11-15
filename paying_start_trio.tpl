<main class="main">
  <section class="section section_content">
    <div class="container container_narrower">
      <h1 class="title">Пополнить счёт</h1>
      <div class="payment">
        <div class="payment__step" data-step="2">
          <form method="post" action="/payments/pay/confirm/trio/">
            <input type="hidden" name="code" value="{{ code }}" />
            <div class="payment__amount">
              <div class="payment__amount-type" style="background-image: url('/assets/img/white_pay_imgs/{{code}}.png');"></div>
              <div class="input payment__amount-value">
                <input type="number" min="0.01" step="0.01" name="sum" value="{{ sum }}" class="input__input" />
                <div class="input__placeholder">Сумма</div>
              </div>
              <div class="select js-select">
                <div class="select__current">{{ currency }}</div>
              </div>            
            </div>
            <div class="button-wrapper">
              <button class="button_yellow button_arrow_right button_large payment__step__button button" type="submit" value="Go!">Продолжить</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
</main>