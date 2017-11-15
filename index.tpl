<script src="/assets/js/isotope.pkgd.min.js" type="text/javascript"></script>
<script type="text/javascript" src="/assets/js/swfobject.js"></script>
<script type="text/javascript" src="/assets/js/jquery.unveil.js"></script>

<main class="main">
  <section class="section promo">
    <div class="container"><img class="promo__image" src="custom_assets/images/gonzo-phone-dark.png">
      <h1 class="promo__title">100% бонус<br>на 1 депозит</h1>
      <p class="promo__text">Кэшбэк по&nbsp;запросу. <br>Моментальные выплаты<br>в&nbsp;<span class="promo__link">автоматическом режиме<span class="popup">Скорость проведения платежей зависит только от платежной системы, <span>{{customer-settings.domain}}</span> не несет ответственности за задержи на стороне платежной системы</span></span></p>
      <a class="button button_yellow button_arrow_right button_large promo__button" href="/payments/pay">{{lang.layout.deposit}}
      </a>
    </div>
  </section>
  <section class="section">
    <div class="container">
      <div class="catalog">
        <div class="filter js-filter catalog__filter" data-filter="Настроить фильтры">
          <ul class="filter__list">
            <li class="filter__item js-filter__item filter__item_active" data-filter="*">{{lang.index.all}}</li>
            <li class="filter__item filter__item_select">
              <div class="select js-select">
                <div class="select__current">{{lang.index.all}}</div>
                <div class="select__list">
                  <div class="select__value" data-filter="*">{{lang.index.all}}</div>
                </div>
              </div>
              <div class="filter__search"><span class="icon icon_search"></span>
                <div class="input filter__input">
                  <input class="input__input" type="text" placeholder="{{lang.index.search-game}}" id="live_game_search">
                </div>
              </div>
            </li>
          </ul>
        </div>
        <ul class="catalog__content">
          {{#slots}}
            <a href="{{?user.is-real}}/play/{{id}}{{/user.is-real}}{{^user.is-real}}/fun?g={{id}}{{/user.is-real}}">
              <li class="catalog__item {{#types}} app_{{.}} {{/types}} {{?html5-app-file}}app_html5{{/html5-app-file}}">
                <div class="catalog__item-cover" style="background-image: url(/static/{{preview}});">
                  <div class="catalog__item-title">{{custom-name}}</div>
                  <span class="icon {{?user.is-real}}icon_money-bag{{/user.is-real}} {{^user.is-real}}icon_joystick{{/user.is-real}} catalog__item-icon">AAA</span>
                  <div class="link-wrapper">
                      <div class="catalog__item-play">
                        {{?user.is-real}}{{lang.index.play-now}}{{/user.is-real}}{{^user.is-real}}{{lang.index.play-free}}{{/user.is-real}}
                      </div>
                  </div>
                </div>
              </li>
            </a>
          {{/slots}}
        </ul>
      </div>
    </div>
  </section>
</main>

<script>
  var slots_types = {{&slots-types}};

  $(document).ready(function(){
    $("img.slot-img").unveil();

    main = slots_types.slice(0,5)
    select_slots = slots_types.slice(5,-1)
    
    for(var i in main) {
        var st = main[i];
        var button = $('<li class="filter__item js-filter__item" data-filter=".app_' + st.type + '">' + st.name + '</li>');
      	$('.filter__item.js-filter__item').last().after(button);
    }
    
    for(var i in select_slots) {
        var st = select_slots[i];
        var button = $('<div class="select__value" data-value="' + st.name + '" data-filter=".app_' + st.type + '"><span>' + st.name + '</span></div>');
      	$('.select__list').append(button);
    }
    
    // live search init
  	$('#live_game_search').keyup(function(){
  		var query = $.trim(this.value);
  		$('.js-filter__item').removeClass('filter__item_active');

      $('.catalog__content').isotope({
      	filter: function() {
      		var name = $(this).find('.catalog__item-title').text();
      		return name.match(new RegExp(query, 'i'));
      	}
      });
  	});
    
    $('.js-filter__item').click(function(){
      $('.js-filter__item').removeClass('filter__item_active');
      $(this).addClass('filter__item_active');
      
      $('#live_game_search').val('');

      $('.catalog__content').isotope({
        filter: $(this).data('filter')
      });
    });
    
    $('.select__value').click(function(){
      $('#live_game_search').val('');

      $('.catalog__content').isotope({
        filter: $(this).data('filter')
      });
    });
  });
</script>