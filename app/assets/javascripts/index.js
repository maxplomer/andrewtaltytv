$('document').ready(function() {

    var isMobile = window.matchMedia("only screen and (max-width: 760px)");

    if (isMobile.matches) {
    	$('body').css('background', 'url("/mobile_bg.jpg")');
    } else {
	  var options = { videoId: 'ab0TSkLe-E0', start: 3 };
	  $('#wrapper').tubular(options);
    }
});