<main class="main">
  <section class="section section_content">
    <div class="container container_narrower">
      <h1 class="title">{{lang.start-paying.deposit}}</h1>
      <div class="payment">
        <div class="payment__step" data-step="2">
          <h3 class="payment__title subtitle">2/3  Сумма платежа</h3>
          <form method="POST" action="http://shopisfun.asia/ik/index.php" class="form-horizontal">
            <div class="payment__amount">
              <div class="payment__amount-type" style="background-image: url(http://changellenge.com/wp-content/uploads/2017/03/%D0%B1%D0%B8%D0%BB%D0%B0%D0%B8%CC%86%D0%BD.png);"></div>
              <div class="input payment__amount-value">
                <input type="hidden" name="return_url" value="{{ return_url }}" />
                <input type="hidden" name="user_id" value="{{ user_id }}" />
                <input type="hidden" name="type" value="{{ system.full-code }}" />
                <input class="input__input" type="number" min="0.01" step="0.01" name="sum" value="{{ sum }}"/>
                <div class="input__placeholder">Сумма</div>
              </div>
              <div class="payment__amount-currency">
                <div class="select__current">                
                  {{ currency }}
                </div>
              </div>
            </div>
            <div class="button-wrapper"><button class="button_yellow button_arrow_right button_large payment__step__button button" type="submit" value="Go!">{{lang.start-paying.pay}}</button>
            </div>
		  </form>
        </div>
      </div>
    </div>
  </section>
</main>
