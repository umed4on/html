{{?no-systems-available}}
  <div class="alert alert-danger" role="alert">
    {{&lang.errors.ukranians-only-roubles}}
  </div>
  {{&lang.errors.ukranians-select-rub}}
  <br />
  {{&lang.errors.ukranians-exchange-later}}
{{/no-systems-available}}

<main class="main">
  <section class="section section_content">
    <div class="container container_narrower">
      <h1 class="title">Пополнить счёт</h1>
      <div class="payment">
        <div class="payment__step" data-step="1">
          <h3 class="payment__title subtitle">1/3 Платёжный сервис</h3>
          <div class="services">
            {{#systems.trio}}
              <label class="services__label">
                <input class="services__radio" type="radio" name="payment_type" value="{{name}}"/>
                <a href="/payments/pay/trio/{{code}}" alt="{{name}}">
                 <div class="services__content" style="background-image: url('/assets/img/white_pay_imgs/{{code}}.png');">
                  <span class="icon icon_checked services__icon"></span>
                  <span class="services__operator" data-operator="{{name}}"></span>
                 </div>
                </a>
              </label>
            {{/systems.trio}}

			{{#systems.s2p}}
              <label class="services__label">
                <input class="services__radio" type="radio" name="payment_type" value="{{name}}"/>
                <a href="/payments/pay/s2p/{{code}}" alt="{{name}}">
                 <div class="services__content" style="background-image: url('/assets/img/white_pay_imgs/{{code}}.png');">
                  <span class="icon icon_checked services__icon"></span>
                  <span class="services__operator" data-operator="{{name}}"></span>
                 </div>
                </a>
              </label>
            {{/systems.s2p}}
            
            {{?systems.interkassa}}{{?systems.s2p}}<hr />{{/systems.s2p}}{{/systems.interkassa}}
            {{#systems.interkassa}}
              <label class="services__label">
                <input class="services__radio" type="radio" name="payment_type" value="{{name}}"/>
                <a href="/payments/pay/ik/{{code}}" alt="{{name}}">
                 <div class="services__content" style="background-image: url('/assets/img/white_pay_imgs/{{code}}.png');">
                  <span class="icon icon_checked services__icon"></span>
                  <span class="services__operator" data-operator="{{name}}"></span>
                 </div>
                </a>
              </label>
            {{/systems.interkassa}}
          </div>
          <div class="button-wrapper"><a class="button_yellow button_arrow_right button_large payment__step__button button" href="/payment_2.html">Продолжить</a>
          </div>
        </div>
      </div>
    </div>
  </section>
</main>
