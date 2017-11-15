<main class="main">
  <section class="section section_content">
    <div class="container container_narrower">
      <h1 class="title">РЕГИСТРАЦИЯ</h1>
      <form class="auth" action="/sign_up" id="sign_up" method="POST">
        <div class="auth__row">
          <div class="input auth__input {{?errors.email}}input_error{{/errors.email}}">
            <input class="input__input" id="email" name="email" type="email" value="{{ email }}"/>
            {{?errors.email}}
              <div class="input__error-message">{{errors.email}}</div>
            {{/errors.email}}
            <div class="input__placeholder">{{lang.sign-up.email}}</div>
          </div>
          <div class="label_or">
            ИЛИ
          </div>
          <div class="input auth__input {{?errors.phone}}input_error{{/errors.phone}}">
            <input class="input__input" id="phone" name="phone" type="tel" pattern="^(\+|8)\d{8,}$" title="{{geoip.example-phone}}" value="{{ phone }}"/>
            {{?errors.phone}}
              <div class="input__error-message">{{errors.phone}}</div>
            {{/errors.phone}}
            <div class="input__placeholder">{{lang.sign-up.phone}}</div>
          </div>
        </div>
        <div class="auth__row">
          <div class="input auth__input {{?errors.password}}input_error{{/errors.password}}">
            <input class="input__input" id="password" name="password" type="password" value="{{ password }}"/>
            {{?errors.password}}
              <div class="input__error-message">{{errors.password}}</div>
            {{/errors.password}}
            <div class="input__placeholder">{{lang.sign-up.password}}</div>
          </div>
          <div class="input auth__input {{?errors.password-confirmation}}input_error{{/errors.password-confirmation}}">
            <input class="input__input" id="password-confirmation" name="password-confirmation" type="password" value="{{ password-confirmation }}"/>
            {{?errors.password-confirmation}}
			  <div class="input__error-message">{{errors.password-confirmation}}</div>
            {{/errors.password-confirmation}}
            <div class="input__placeholder">{{lang.sign-up.password-confirmation}}</div>
          </div>
          <div class="select">
            <div class="select__placeholder">{{lang.settings.currency}}</div>
            <select class="select__current" name="currency" id="currency">
              {{#currencies}}
                <option {{?current}}select{{/current}} class="select__value" value="{{value}}"><span>{{name}}</span></div>
              {{/currencies}}
            </select>
          </div>
          <div class="select">
            <div class="select__placeholder">{{lang.settings.language}}</div>
            <select class="select__current" name="language" id="language">
              {{#languages}}
               <option {{?current}}selected{{/current}} class="select__value" name="language" id="language" value="{{value}}"><span>{{name}}</span></div>
              {{/languages}}
            </select>
          </div>
        </div>
        <div class="button-wrapper">
          <button class="button button_yellow button_arrow_right button_large auth__button" type="submit">{{lang.layout.sign-up}}
          </button>
        </div>
        <div class="link-wrapper"><a class="link" href="/sign_in">Уже есть аккаунт</a></div>
      </form>
    </div>
  </section>
</main>
