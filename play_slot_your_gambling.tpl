<script type="text/javascript" src="/assets/js/swfobject.js"></script>
<script src="/custom_assets/javascripts/app.js"></script>


<main class="main">
  <section class="section section_content">
    <div class="container container_narrower">
      <p class="promo__text game-title-pink">{{custom-name}}</p>
      <div id="slot" style="width: 100%; height: auto !important;">
        <div id="errorNoFlashMessage" style="display: none">
          Please install or enable Adobe Flash to play {{slot.name-en}}
        </div>
        {{?iframe-url}}
        <iframe src="{{iframe-url}}" style="height: 600px; width: 800px; border: none;"/>
        {{/iframe-url}}
        {{?html-embed}}
        <div style="height: 600px;">
        {{&html-embed}}
        </div>
        {{/html-embed}}
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

<script type="text/javascript">
$(document).ready(function() {
  var hasFlash = swfobject.hasFlashPlayerVersion("11.0.0");
  var isFlashGame = {{?slot.html5-mainjs}}false{{/slot.html5-mainjs}}{{^slot.html5-mainjs}}true{{/slot.html5-mainjs}};
  if(isFlashGame && !hasFlash) {
    $("#errorNoFlashMessage").show();
    console.log("Blocked flash");
  }
});
</script>