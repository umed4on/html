<script type="text/javascript" src="{{env-js}}"></script>
<script src="/static/loader/build/app.js"></script>
<script>
    window.init_loader({
      game: "{{ id }}",
      billing: "{{ api-key }}",
      token: "{{ device-id }}",
      kf: {{ denomination }},
      currency: "{{ currency }}",
      language: "{{ game-language }}",
      button: "{{ style }}",
      ios8bar: "hint"
    });
</script>

<div id="game-content"></div>
