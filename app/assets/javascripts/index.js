$('document').ready(function() {

  if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
    $('body').css('background', 'url("/mobile_bg.jpg")');
    $('#video-controls').css('display', 'none');
    $('.social-media').find( "i" ).css('font-size', '70px');
    $('.social-media').find( "i" ).css('margin-right', '50px');
    $('.footer').css('margin-left', '-180px');
    $('.footer').css('width', '400px');

  } else {
    var options = { videoId: 'ab0TSkLe-E0', start: 3 };
    $('#wrapper').tubular(options);
  }

});