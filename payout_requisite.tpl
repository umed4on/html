<main class="main">
  <section class="section section_content">
    <div class="container container_narrower">
      <form action="/payments/withdraw/send" method="POST" class="form-horizontal">
      	<h1 class="title">{{lang.payout-requisite.withdrawing(price.sum,price.currency,direction.full-name)}}</h1>
        {{price-comission}}
        <div class="requisite">
          <div class="subtitle">{{lang.payout-requisite.enter-requisite}}</div>
          <div class="input requisite__input">
            <input name="payout_id" type="hidden" value="{{payout-id}}" />
            <input name="requisite" type="text" placeholder="{{direction.example}}" value="{{requisite}}" class="input__input" />            <div class="input__placeholder">Реквизиты</div>
          </div>
          <div class="button-wrapper">
                <button class="button button_yellow button_arrow_right button_large requisite__button">{{lang.payout-requisite.withdraw}}
                </button>
          </div>
        </div>
        <input name="signature" type="hidden" value="{{signature}}" />
      </form>
    </div>
  </section>
</main>
