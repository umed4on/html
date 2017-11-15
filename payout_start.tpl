<script type="text/javascript">
  function setCurrency() {
    var c = $("#currencies-choise").val();
    $("#chosen-currency").text(c);
    var sum = $("#currency-" + c).attr("data-sum")
    $("#chosen-amount").attr("max", sum);
  }
  $(document).ready(function () {
    setCurrency();
    $("#currencies-choise").change(setCurrency);
  });
</script>

<main class="main">
  <section class="section section_content">
    <div class="container container_narrower">
      <h1 class="title title_no_border">Вывести деньги</h1>
      <form method="POST" action="/payments/withdraw/validate" class="form-horizontal">
        <div class="box">
          <h3 class="box__title">Кошелёк и сумма</h3>
          <div class="box__row">
            <div class="select box__select">
              <div class="select__placeholder">Кошелёк</div>
              <select name="" id="" class="select__current">
                {{#balances}}
                  <option class="select__value" data-sum="{{sum}}" id="currency-{{currency}}" value="{{currency}}"><span>{{.}}</span></div>
                {{/balances}}
              </select>
            </div>
            <div class="input box__input box__input_with-select box__input_with-select_no-arrows">
              <input class="input__input" id="chosen-amount" type="number" min="0.01" step="0.01" name="sum" value="{{ sum }}" />
              <div class="input__placeholder">Сумма</div>
              <div class="select refill__select">
                <div class="select__placeholder">Валюта</div>
                <select class="select__current">
                  <option slected class="select__value select__value_active" data-value="USD"><span>USD</span></option>
                  <option class="select__value" data-value="RUB"><span>RUB</span></option>
                  <option class="select__value" data-value="EUR"><span>EUR</span></option>
                </select>
              </div>
            </div>
          </div>
        </div>
        <h3 class="subtitle centered">Платёжный сервис</h3>
        <div class="services">
          {{#directions}}
            <label class="services__label">
              <input class="services__radio" type="radio" id="{{system}}-{{code}}" value="{{system}}:{{code}}" name="full_code"/>
              <div class="services__content" style="background-image: url('/assets/img/white_pay_imgs/{{code}}.png');"><span class="icon icon_checked services__icon"></span><span class="services__operator" data-operator="{{full-name}}"></span>
              </div>
            </label>
          {{/directions}}
        </div>
        <div class="payment__separator"></div>
        <div class="payment__row">
          <div class="button-wrapper"><button class="button_yellow button_arrow_right button_large payment__step__button button" type="submit">{{lang.layout.withdraw}}</button>
          </div>
        </div>
      </form>
    </div>
  </section>
</main>
