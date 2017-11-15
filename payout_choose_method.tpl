<main class="main">
  <section class="section section_content">
    <div class="container container_narrower">
      <h1 class="title">Способ вывода</h1>
      <form action="/payments/start2pay/payout_requisite" method="POST">
        <div class="payout">
          <div class="payout__row">
            {{#methods}}
              <button class="button button_yellow button_large payout__button" type="submit" name="selected_method" value="{{method-signature}}">
                {{name}} {{sum-payment}} {{currency-payment}}
              </button>
            {{/methods}}
          </div>
        </div>
      </form>
    </div>
  </section>
</main>