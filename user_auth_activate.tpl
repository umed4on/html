{{?wrong-code}}<b>{{lang.activation.code-wrong}}</b>{{/wrong-code}}
<script src="/assets/js/confirmations.js" type="text/javascript"></script>
<script type="text/javascript">
  confirmation("confirm");
</script>

{{?attrs.email}}
  <main class="main">
    <section class="section section_content">
      <div class="container container_narrower">
        <div class="caption">
          <h1 class="title title_no_border title_no_offset">Подтверждение регистрации</h1>
          <div class="text text_centered text_white">{{lang.activation.code-was-sent(attrs.email)}}</div>
          <div class="separator separator_red"></div>
        </div>
        <div class="reset-password">
          <form class="reset-password__row" action="/activate" id="activate" method="POST">
            <div class="input reset-password__input">
              <input class="input__input" type="text" id="code" name="code"/>
              <input type="hidden" name="attribute" value="email" />
              <div class="input__placeholder">{{lang.activation.code}}</div>
            </div>
            <button class="button button_yellow button_large reset-password__button">{{lang.confirm-email}}
            </button>
          </form>
        </div>
      </div>
    </section>
  </main>
{{/attrs.email}}

{{?attrs.phone}}
  <main class="main">
    <section class="section section_content">
      <div class="container container_narrower">
        <div class="caption">
          <h1 class="title title_no_border title_no_offset">Подтверждение регистрации</h1>
          <div class="text text_centered text_white">{{lang.activation.code-was-sent(attrs.phone)}}</div>
          <div class="separator separator_red"></div>
        </div>
        <div class="reset-password">
          <form class="reset-password__row" action="/activate" id="activate" method="POST">
            <div class="input reset-password__input">
              <input class="input__input" type="text" id="code" name="code"/>
              <input type="hidden" name="attribute" value="phone" />
              <div class="input__placeholder">{{lang.activation.code}}</div>
            </div>
            <div class="button button_yellow button_large reset-password__button">{{lang.confirm-phone}}
            </div>
          </form>
        </div>
      </div>
    </section>
  </main>
{{/attrs.phone}}
