<!DOCTYPE html>
<html lang="ru">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/custom_assets/style/vulkan.css?2">
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="/assets/js/index.js" type="text/javascript"></script>
    <title>{{title}}{{?title}} - {{/title}}{{texts.casino_name}}</title>
  </head>
  <body class="{{?flash}}has-topline{{/flash}} has-pay-services">
    <script type='text/javascript'>
      $(document).ready(function(){
        loadBalance();
        {{?customer-settings.site-displaying.theme}}
          var savedThemeName = '{{customer-settings.site-displaying.theme}}';
          $().bootstrapThemeSwitcher('switchTheme', savedThemeName, '//netdna.bootstrapcdn.com/bootswatch/latest/'+savedThemeName.toLowerCase()+'/bootstrap.min.css');
        {{/customer-settings.site-displaying.theme}}
      });
    </script>
    <!-- header start-->


    <header class="header header_links_wide"><a class="header__logo only-mobile" href="/"></a>
      <div class="header__hamburger only-mobile js-header__hamburger"></div>
      <div class="container"><a class="header__logo" href="/" style="background-image: url('/custom_assets/images/vulkan-logo.png');"></a>
        <div class="header__close js-header__close"></div>

        {{?user.username}}
          <div class="header__balance">
            <span id="user_balance">
            </span>
          </div>
          <a class="button_outline button_small header__button button" href="/payments/pay">  {{lang.layout.deposit}}</a>
          <ul class="links header__links">
            <li class="links__item">
              <div class="links__href links__href_dropdown js-dropdown-button">
                <span class="icon icon_profile links__icon"></span>Профиль
                <div class="dropdown links__dropdown links__dropdown_profile">
                  <div class="dropdown__cover"></div>
                  <ul class="dropdown__list">
                    <li class="dropdown__item"><a class="dropdown__link" href="/settings">{{lang.layout.settings}}</a></li>
                    <li class="dropdown__item"><a class="dropdown__link" target="_blank" href="/payments/pay">{{lang.layout.deposit}}</a></li>
                    <li class="dropdown__item"><a class="dropdown__link" href="/payments/withdraw">{{lang.layout.withdraw}}</a></li>
                    <li class="dropdown__item"><a class="dropdown__link" href="/reports">{{lang.layout.reports}}</a></li>
                    <li class="dropdown__item"><a class="dropdown__link" href="/sign_out">{{lang.layout.sign-out}}</a></li>
                  </ul>
                </div>
              </div>
            </li>
            <!-- <li class="links__item">
              <div class="links__href links__href_dropdown js-dropdown-button">Ru
                <div class="dropdown links__dropdown">
                  <div class="dropdown__cover"></div>
                  <ul class="dropdown__list">
                    <li class="dropdown__item dropdown__item_active"><a class="dropdown__link">Ru</a></li>
                    <li class="dropdown__item dropdown__item"><span>En</span></li>
                    <li class="dropdown__item dropdown__item"><span>Es</span></li>
                    <li class="dropdown__item dropdown__item"><span>Pt</span></li>
                    <li class="dropdown__item dropdown__item"><span>Fr</span></li>
                  </ul>
                </div>
              </div>
            </li> -->

          </ul>
        </div>
      {{/user.username}}

      {{^user.username}}
       <!--  <div class="header__balance">
          <span id="user_balance">
          </span>
        </div> -->
        <a class="button_outline button_small header__button button" href="/payments/pay">  {{lang.layout.deposit}}</a>
        <ul class="links header__links">
          <li class="links__item"><a class="links__href" href="/sign_up">{{lang.layout.sign-up}}</a></li>
          <li class="links__item"><a class="links__href" href="/sign_in">{{lang.layout.sign-in}}</a></li>
          <!-- <li class="links__item">
            <div class="links__href links__href_dropdown js-dropdown-button">Ru
              <div class="dropdown links__dropdown">
                <div class="dropdown__cover"></div>
                <ul class="dropdown__list">
                  <li class="dropdown__item dropdown__item_active"><a class="dropdown__link">Ru</a></li>
                  <li class="dropdown__item dropdown__item"><span>En</span></li>
                  <li class="dropdown__item dropdown__item"><span>Es</span></li>
                  <li class="dropdown__item dropdown__item"><span>Pt</span></li>
                  <li class="dropdown__item dropdown__item"><span>Fr</span></li>
                </ul>
              </div>
            </div>
          </li> -->
        </ul>
      {{/user.username}}
    </header>
    <!-- header end-->
    <div class="col-md-8 text-center">
      {{?flash}}
        {{?flash.error}}
      	  <div class="topline">
            <div class="container"><span class="topline__text">{{flash.error}}</span></div>
          </div>
        {{/flash.error}}
        {{^flash.error}}
      	  <div class="topline">
            <div class="container"><span class="topline__text">{{flash}}</span></div>
          </div>
        {{/flash.error}}
      {{/flash}}
      {{&body}}
    </div>
    <section class="section">
      <div class="container">
        <div class="pay-services">
          <div class="pay-services__item"><img src="/custom_assets/images/Alfa-Bank.svg.png"></div>
          <div class="pay-services__item"><img src="/custom_assets/images/mastercard.png"></div>
          <div class="pay-services__item"><img src="/custom_assets/images/Sberbank.svg.png"></div>
          <div class="pay-services__item"><img src="/custom_assets/images/Alfa-Bank.svg.png"></div>
          <div class="pay-services__item"><img src="/custom_assets/images/mastercard.png"></div>
          <div class="pay-services__item"><img src="/custom_assets/images/Sberbank.svg.png"></div>
          <div class="pay-services__item"><img src="/custom_assets/images/mastercard.png"></div>
        </div>
      </div>
    </section>
    <!-- footer start-->
    <footer class="footer">
      <div class="container">
        <div class="footer__rights">{{ &texts.footer_text }}</div>
        <ul class="footer__links links">
          <li class="links__item"><a class="links__href" href="/about">{{lang.layout.about}}</a></li>
          <li class="links__item"><a class="links__href" href="/privacy">{{lang.layout.privacy}}</a></li>
        </ul>
      </div>
    </footer>
    <!-- footer end-->
    <script src="/custom_assets/javascripts/app.js"></script>
    <!--Start of Zopim Live Chat Script-->
    <script type="text/javascript">
      window.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=
      d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.
      _.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute("charset","utf-8");
      $.src="//v2.zopim.com/?3wh7yxC3t5HMgzszka9jxfSRgT8uqe2d";z.t=+new Date;$.
     type="text/javascript";e.parentNode.insertBefore($,e)})(document,"script");
    </script>
    <!--End of Zopim Live Chat Script-->
  </body>
  </body>
</html>
