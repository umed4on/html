<main class="main">
  <section class="section section_content">
    <div class="container container_narrower">
      <form action="/restore_password" id="restore_password" method="POST">
		<input type="hidden" name="attribute" value="email" />
        <div class="caption">
          <h1 class="title title_no_border title_no_offset">{{lang.password-restore.restore}}</h1>
          <div class="separator separator_red"></div>
        </div>
        <div class="auth">
          <div class="auth__row">
            <div class="input auth__input {{?errors.password}}input_error{{/errors.password}}">
              <input id="username" name="username" type="text" class="input__input" value="{{ username }}"/>
              {{?errors.username}}
                <div class="input__error-message">{{errors.username}}</div>
              {{/errors.username}}
              <div class="input__placeholder">{{lang.sign-in.email-or-phone}}</div>
            </div>
          </div>
          <div class="button-wrapper">
              <button type="submit" class="button button_yellow button_large remind-password__button">{{lang.password-restore.send-code}}</button>
          </div>
        </div>
      </form>
    </div>
  </section>
</main>


