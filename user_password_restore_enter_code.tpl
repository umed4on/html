<script src="/assets/js/confirmations.js" type="text/javascript"></script>
<script type="text/javascript">
  confirmation("restore", "{{username}}");
</script>

<main class="main">
  <section class="section section_content">
    <div class="container container_narrower">
      <div class="caption">
        <h1 class="title title_no_border title_no_offset">{{lang.password-restore.code-was-sent-to(username)}}</h1>
      </div>
      <div class="reset-password">
        <form action="/restore_password/enter_code" id="restore_password" method="POST">
          <input type="hidden" name="username" value="{{ username }}" />
          {{?phone}}
            <input type="hidden" name="phone" value="{{ phone }}" />
            <div class="reset-password__row">
              <div class="input reset-password__input">
                <input class="input__input" id="code" name="code" maxlength="4" type="text" value="{{ code }}" type="text"/>
                <div class="input__placeholder">Введите полученный код</div>
              </div>
              <button class="button button_yellow button_arrow_right button_large" type="button" disabled="disabled" id="send-again-phone" class="btn btn-default send-again-btn disabled" data-attrname="phone">{{lang.password-restore.restore}}
              </button>
            </div>
          {{/phone}}
          {{?email}}
            <input type="hidden" name="email" value="{{ email }}" />
            <div class="reset-password__row">
              <div class="input reset-password__input">
                <input class="input__input" id="code" name="code" type="text" value="{{ code }}"/>
                <div class="input__placeholder">Введите полученный код</div>
              </div>
              <button class="button button_yellow button_arrow_right button_large" type="submit">{{lang.password-restore.restore}}</button>
            </div>
          {{/email}}
		</form>
      </div>
    </div>
  </section>
</main>
