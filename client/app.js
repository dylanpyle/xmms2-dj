(function(){
  var ui = {
    playlist: '.playlist',
    playBtn: '.js-play',
    pauseBtn: '.js-pause',
    nextBtn: '.js-next',
    prevBtn: '.js-prev'
  };
  var $ui = {};
  for (name in ui) {
    $ui[name] = $(ui[name]);
  }

  $.get(XDJ_CONFIG.api + '/playlist', function(data) {
    $ui.playlist.text(JSON.stringify(data));
  });

  $ui.playBtn.on('click', function() {
    $.post(XDJ_CONFIG.api + '/current/play');
  });

  $ui.pauseBtn.on('click', function() {
    $.post(XDJ_CONFIG.api + '/current/pause');
  });
})();
