<h1>{{lang.start-paying.deposit}}</h1>
<h3>{{system.name}} <img src="/assets/img/white_pay_imgs/{{code}}.png" /></h3>

<form method="post" action="/payments/pay/confirm/trio/" class="form-horizontal">
  <input type="hidden" name="code" value="{{ code }}" />
  <div class="form-group">
    <div class="col-sm-4 col-sm-offset-4">
      <input type="number" min="0.01" step="0.01" name="sum" value="{{ sum }}" class="form-control" />
    </div>
    <div class="col-sm-2 control-label" style="text-align: left !important;">
      {{ currency }}
    </div>
  </div>

 <div class="form-group">
    <div class="col-sm-offset-4 col-sm-4 text-right">
      <button class="btn btn-block btn-primary" type="submit" value="Go!">
        {{lang.start-paying.pay}}
      </button>
    </div>
  </div>
</form>