<main class="main">
  <section class="section section_content">
    <div class="container container_narrower">
      <h1 class="title">{{lang.layout.sign-in}}</h1>
      <form class="auth" action="/sign_in" id="sign_in" method="POST">
        <div class="auth__row">
          <div class="input auth__input">
            <input class="input__input" type="text" value="{{ username }}" id="username" name="username"/>
            <div class="input__placeholder">{{lang.sign-in.email-or-phone}}</div>
          </div>
          <div class="input auth__input">
            <input class="input__input" type="password" value="{{ password }}" id="password" name="password"/>
            <div class="input__placeholder">{{lang.sign-in.password}}</div><a class="auth__restore-password-link" href="/restore_password">{{lang.sign-in.restore-password}}</a>
          </div>
        </div>
        <div class="button-wrapper">
              <button class="button button_yellow button_arrow_right button_large auth__button">{{lang.layout.sign-in}}
              </button>
        </div>
        <div class="link-wrapper"><a class="link" href="/sign_up">{{lang.layout.sign-up}}</a></div>
      </form>
    </div>
  </section>
</main>