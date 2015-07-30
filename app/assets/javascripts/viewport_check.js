$(window).scroll(function() {
  $('#tortilla').each(function(){
  var imagePos = $(this).offset().top;

  var topOfWindow = $(window).scrollTop();
    if (imagePos < topOfWindow+400) {
      $(this).addClass("slideRight");
    }
  });
  $('#meat').each(function(){
  var imagePos = $(this).offset().top;

  var topOfWindow = $(window).scrollTop();
    if (imagePos < topOfWindow+400) {
      $(this).addClass("slideDown");
    }
  });
  $('#garnish').each(function(){
  var imagePos = $(this).offset().top;

  var topOfWindow = $(window).scrollTop();
    if (imagePos < topOfWindow+400) {
      $(this).addClass("slideDown");
    }
  });
  $('#salsas').each(function(){
  var imagePos = $(this).offset().top;

  var topOfWindow = $(window).scrollTop();
    if (imagePos < topOfWindow+400) {
      $(this).addClass("slideDown");
    }
  });
});
