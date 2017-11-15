<main class="main">
  <section class="section section_content">
    <div class="container container_narrower">
      <h1 class="title">Профиль</h1>
      <div class="profile">
        <div class="profile__row">
          <div class="profile__select-wrapper">
            <div class="select js-select">
              {{#currencies}}
                {{?current}}
                  <div class="select__current" value="{{value}}">{{name}}</div>
                {{/current}}
              {{/currencies}}
              <div class="select__placeholder">{{lang.settings.currency}}</div>
              <div class="select__list">
                {{#currencies}}
                  <div class="select__value {{?current}}select__value_active{{/current}}" data-value="{{value}}"><span>{{name}}</span></div>
                {{/currencies}}
              </div>
            </div>
            <button class="button button_outline_red button_large profile__button">{{lang.save}</button>
          </div>
        </div>

        <div class="separator"></div>
        <div class="profile__row">
          <form action="/settings/change_email" method="post">
            <div class="profile__select-wrapper">
              <div class="input">
                <input id="email" name="email" type="text" class="input__input" value="{{ user.email }}" />
                {{?errors.email}}
                  <span id="helpBlock" class="help-block">{{errors.email}}</span>
                {{/errors.email}}
                <div class="input__placeholder">{{lang.sign-up.email}}</div>
              </div>
              <button class="button button_outline_red button_large profile__button">{{lang.change}}</button>
            </div>
          </form>
          <form action="/settings/change_phone" method="post">
            <div class="profile__select-wrapper">
              <div class="input">
                <input id="phone" name="phone" type="text" class="input__input" value="{{ user.phone }}" />
                {{?errors.phone}}
                  <span id="helpBlock" class="help-block">{{errors.phone}}</span>
                {{/errors.phone}}
                <div class="input__placeholder">{{lang.sign-up.phone}}</div>
              </div>
              <button class="button button_outline_red button_large profile__button">{{lang.change}}</button>
            </div>
          </form>
        </div> 

        <h3 class="box__title">{{lang.changing.change-password}}</h3>
        <form action="/settings/change_password" id="new_password" method="POST">
          <div class="box__row">
            <div class="input box__input">
              <input id="password" name="current-password" type="password" class="input__input" value="" />
              {{?errors.current-password}}
                <span id="helpBlock" class="help-block">{{errors.current-password}}</span>
              {{/errors.current-password}}
              <div class="input__placeholder">{{lang.changing.current-password}}</div>
            </div>
            <div class="input box__input">
              <input id="password" name="password" type="password" class="input__input" value="{{ password }}" />
               {{?errors.password}}
                 <span id="helpBlock" class="help-block">{{errors.password}}</span>
               {{/errors.password}}
              <div class="input__placeholder">{{lang.sign-up.password}}</div>
            </div>
            <div class="input box__input">
              <input id="password-confirmation" name="password-confirmation" type="password" class="input__input" value="{{ password-confirmation }}" />
              {{?errors.password-confirmation}}
                <span id="helpBlock" class="help-block">{{errors.password-confirmation}}</span>
              {{/errors.password-confirmation}}
              <div class="input__placeholder">{{lang.sign-up.password-confirmation}}</div>
            </div>
          </div>
          <div class="box__row">
            <p class="description">Пароль должен содержать не менее 6ти<br>латинских символовов и цифры</p>
            <button class="button button_yellow button_large profile__button">Сменить</button>
          </div>
        </form>
      </div>      
    </div>
  </section>
</main>