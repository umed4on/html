<main class="main">
  <section class="section section_content">
    <div class="container container_narrower">
      
      <p class="promo__text game-title-pink">{{custom-name}}</p>
	  
      {{^denomination-is-fixed}}
      <div>  
        <p>
          <form method="POST" action="">
            <div class="">
              {{#denominations}}
              <p>
              <div class="auto-blocks" style="float: left;margin: 1px;">
                <button type="submit" name="denomination_{{ num }}"
                                      class="button_outline button_small header__button button {{?chosen}}.button_outline_red:hover{{/chosen}}"
                                      value="{{ formatted }} {{ currency }}">{{ formatted }} {{ currency }}</button>
              </div>

              {{/denominations}}
            </div>
          </form>
      	</p>
      </div>
      {{/denomination-is-fixed}}  
    
      <div id="slot" style="width: 100%; height: 478px;">
        <div id="game-content" style="background: none;"></div>
      </div>
	  <div class="auth">
        {{?user.is-demo}}
          <div class="button-wrapper">
            <a class="button button_outline_red button_large" href="/">{{lang.layout.try-another-game}}</a>
            <p>&nbsp;</p>
            <a class="button button_yellow button_arrow_right button_large auth__button" href="/sign_up">{{lang.messages.register-for-play}}</a>
          </div>
        {{/user.is-demo}}

        {{^user.is-demo}}
          <div class="button-wrapper">
            <a class="button button_outline_red button_large" href="/">{{lang.layout.try-another-game}}</a>
            <p>&nbsp;</p>
            <a class="button button_yellow button_arrow_right button_large auth__button" href="/payments/pay">
              {{lang.layout.your-balance}}: <span class="user_balance"></span>
            </a>
          </div>
        {{/user.is-demo}}
      </div>    
    </div>
  </section>
</main>

<script type="text/javascript" src="{{env-js}}"></script>
<script src="/static/loader/build/app.js"></script>
<script type="text/javascript">
  window.init_loader({
    game: "{{ id }}",
    billing: "{{ api-key }}",
    token: "{{ device-id }}",
    kf: {{ denomination }},
    currency: "{{ currency }}",
    language: "{{ game-language }}",
    button: "{{ style }}"
  });
  $('body').attr("style", "background-color: '' !important");
</script>
