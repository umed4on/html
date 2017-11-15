<script type="text/javascript">
  var courses = {{&courses}};
  function setCourse() {
    var c_from = $("#currencies-from-choise").val();
    var max_sum = $("#currency-option-from-" + c_from).attr("data-sum");
    $("#exchange-amount").attr("max", max_sum);
    var c_to = $("#currencies-to-choise").val();
    var isCourseValid = !(c_from == c_to) && c_to;
    var sum = parseFloat($("#exchange-amount").val());
    var course = (courses[c_from] / courses[c_to]).toFixed(4);
    var converted = (sum * course * 0.99).toFixed(2);
    if(isNaN(converted)) {
      converted = '-';
      isCourseValid = false;
    }
    $("#currencies-to-choise option").removeAttr('disabled');
    if(isCourseValid) {
      $("#currency-option-to-" + c_from).attr('disabled', 'disabled');
    }
    $("#course-label").text("1 " + c_from + " = " + course + " " + c_to);
    $("#converted-sum-label").text(converted);
    $("#exchange-button").attr("disabled", !isCourseValid);
  }
  $(document).ready(function () {
    setCourse();
    $("#exchange-amount").change(setCourse);
    $("#exchange-amount").keyup(setCourse);
    $("#currencies-from-choise").change(setCourse);
    $("#currencies-to-choise").change(setCourse);
  });
</script>

<main class="main">
  <section class="section section_content">
    <div class="container container_narrower">
      {{?balances}}
        <h1 class="title title_no_border">{{lang.exchange.header}}</h1>
        <div class="box">
          <h3 class="box__title">Обменять деньги</h3>
          <form method="POST" class="form-inline" action="/payments/exchange">
            <div class="box__exchange exchange">
              <div class="input box__input exchange__input box__input_with-select">
                <input type="number" class="input__input" placeholder="100.00" step="0.01" min="0" required name="sum_from" id="exchange-amount" value="{{ sum }}" />
                <div class="input__placeholder">Обмениваемая валюта</div>
                <div class="select js-select">
                  <div class="select__list">
                    {{#balances}}
                      <div class="select__value" data-sum="{{sum}}" id="currency-option-from-{{currency}}" value="{{currency}}"><span>{{.}}</span></div>
                    {{/balances}}
                  </div>
                </div>
              </div>
              <div class="input box__input exchange__input box__input_with-select">
                <input class="input__input" type="text"/>
                <div class="input__placeholder">Желаемая валюта</div>
                <div class="exchange__tooltip">59.2490 RUB</div>
                <div class="select js-select">
                  <div class="select__current">RUB</div>
                  <div class="select__list">
                    {{#currencies}}
                      <div class="select__value" data-value="{{.}}" id="currency-option-to-{{.}}"><span>{{.}}</span></div>
                    {{/currencies}}
                  </div>
                </div>
              </div>
            </form>
          </div>
          <div class="box__row">
            <div class="description">{{lang.exchange.fee}}</div>
                <button class="button button_yellow button_arrow_right button_large ">{{lang.exchange.submit}}
                </button>
          </div>
        </div>
	  {{/balances}}
      <h3 class="subtitle centered no-mobile">{{lang.report.header}}</h3>
      <div class="table-wrapper">
        <table class="table">
          <thead class="table__head">
            <tr class="table__row">
              <td class="table__item">{{lang.report.date}}</td>
              <td class="table__item">{{lang.report.amount}}</td>
              <td class="table__item">{{lang.report.description}}</td>
              <td class="table__item">{{lang.report.type}}</td>
              <td class="table__item">{{lang.report.state}}</td>
            </tr>
            <tr height="23">
              <td height="23" colspan="5"></td>
            </tr>
          </thead>
          <tbody class="table__content">
            {{#invoices}}
              <tr height="25">
                <td height="25"></td>
              </tr>
              <tr class="table__row">
                <td class="table__item">{{created_at}}</td>
                <td class="table__item">
                  {{sum}}&nbsp;{{currency}}

                  {{?type-is-exchange}}
                    ->
                    {{sum-payment}}&nbsp;{{currency-payment}}
                  {{/type-is-exchange}}
                </td>
                <td class="table__item">
                  {{^type-is-exchange}}
                    {{human-description}}
                  {{/type-is-exchange}}
                  {{?type-is-payout}}
                    {{?operator_transaction_id}}TRX#{{operator_transaction_id}}{{/operator_transaction_id}}
                  {{/type-is-payout}}
                  {{?type-is-payout}}
                    {{?status-is-fail}}
                      {{?completed_at}}
                      <br /><b>{{lang.report.refunded-at}}</b> {{completed_at}}
                      {{/completed_at}}
                    {{/status-is-fail}}
                  {{/type-is-payout}}
                </td>
                <td class="table__item">
                  {{?type-is-payin}}
                    <div class="icon icon_arrow_left"></div>
                  {{/type-is-payin}}
                  {{?type-is-payout}}
                    <div class="icon icon_arrow_right"></div>
                  {{/type-is-payout}}
                  {{?type-is-exchange}}
                    <div class="icon icon_arrow_left"></div>
                  {{/type-is-exchange}}
                </td>
                <td class="table__item">
                  {{?status-is-new}}
                    <div class="icon icon_process"></div>
                  {{/status-is-new}}
                  {{?status-is-success}}
                    <p class="text-success">
                      <i title="{{lang.report.state-success}}" class="glyphicon glyphicon-ok"></i>
                    </p>
                  {{/status-is-success}}
                  {{?status-is-fail}}
                    <p class="text-danger">
                      <i title="{{lang.report.state-fail}}" class="glyphicon glyphicon-remove"></i>
                    </p>
                  {{/status-is-fail}}
                  {{?operator-result-description}} ({{operator-result-description}}){{/operator-result-description}}
                </td>
              </tr>
            {{/invoices}}
          </tbody>
        </table>
      </div>
    </div>
  </section>
</main>