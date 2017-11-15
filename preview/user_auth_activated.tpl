<main class="main">
  <section class="section section_content">
    <div class="container container_narrower">
        <h1>{{lang.activated.your-account-is-activated}}</h1>
        {{?user}}
        <a href="/">{{lang.activated.play-now}}</a>
        {{lang.activated.or}}
        <a href="/payments/pay">{{lang.activated.deposit}}</a>
        {{/user}}
        {{^user}}
        <a href="/sign_in">{{lang.activated.sign-in-to-start}}</a>
        {{/user}}
        {{?has-pixel}}
        <iframe src="/pixel" style="width:0;height:0;border:0; border:none;"></iframe>
        {{/has-pixel}}
    </div>
  </section>
</main>

