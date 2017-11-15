<main class="main">
  <section class="section section_content">
    <form class="form-horizontal" action="/restore_password/new_password" id="new_password" method="POST">
      <input type="hidden" name="username" value="{{ username }}" />
      <input type="hidden" name="code" value="{{ code }}" />
      <div class="container container_narrower">
        <div class="caption">
          <h1 class="title title_no_border title_no_offset">{{lang.sign-up.enter-new-password}}</h1>
          <div class="text text_centered text_white">Пароль должен содержать не менее 6ти латинских<br>символовов и цифры</div>
          <div class="separator separator_red"></div>
        </div>
        <div class="auth">
          <div class="auth__row">
            <div class="input auth__input {{?errors.password}}input_error{{/errors.password}}">
              <input id="password" name="password" type="password" value="{{ password }}" class="input__input" type="password"/>
              {{?errors.password}}
                <div class="input__error-message">{{errors.password}}</div>
              {{/errors.password}}
              <div class="input__placeholder">{{lang.sign-up.password}}</div>
            </div>
            <div class="input auth__input {{?errors.password-confirmation}}input_error{{/errors.password-confirmation}}">
              <input class="input__input" type="password" id="password-confirmation" name="password-confirmation" type="password" value="{{ password-confirmation }}"/>
              {{?errors.password-confirmation}}
                <div class="input__error-message">{{errors.password-confirmation}}</div>
              {{/errors.password-confirmation}}
              <div class="input__placeholder">{{lang.sign-up.password-confirmation}}</div>
            </div>
          </div>
          <div class="button-wrapper">
              <button class="button button_yellow button_large remind-password__button">{{lang.password-restore.restore}}</button>
          </div>
        </div>
      </div>
    </form>
  </section>
</main>
