<main class="main">
  <section class="section section_content">
    <div class="container container_narrower">
      <h1 class="title title_no_border">{{lang.start-paying.deposit}}</h1>
      <form method="post" action="{{payment.action}}" class="form-horizontal">
		<input type="hidden" name="amount" value="{{ payment.sum-str }}" />
        <input type="hidden" name="currency" value="{{ payment.currency-code }}" />
        <input type="hidden" name="shop_id" value="{{ payment.shop-id }}" />
        <input type="hidden" name="sign" value="{{ payment.sign }}" />
        <input type="hidden" name="shop_invoice_id" value="{{ payment.invoice-id }}" />
        <input type="hidden" name="description" value="{{ payment.user-description }}" />
        <input type="hidden" name="paymethod_id" value="{{ payment.paymethod-id }}" />
        <input type="hidden" name="failed_url" value="{{ payment.failed-url }}" />
        <input type="hidden" name="success_url" value="{{ payment.success-url }}" />
        <div class="box">
          <h3 class="box__title">3/3 Итог</h3>
          <div class="box__row">
            <div class="payment__total-type" style="background-image: url('/assets/img/white_pay_imgs/{{code}}.png');">
              <label>Сервис</label>
            </div>
            <div class="payment__total-amount">
              <label>Сумма</label>
              <div class="payment__total-amount-value">{{^payment.same-price-payment}}<span>{{payment.price-payment}}</span> ->{{/payment.same-price-payment}}
       <span>{{ payment.price }}</span></div>
            </div>
          </div>
          <div class="box__row">
            <button class="button button_yellow button_large payment__step__button">{{lang.start-paying.pay}}</button>
          </div>
        </div>
      </form>
    </div>
  </section>
</main>


