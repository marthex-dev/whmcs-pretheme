
$("#dedicated .detail>div .l table tbody tr [data-sub-open]").hover(function(){
  $("#dedicated .detail>div .l table tbody [data-sub-content='"+$(this).attr("data-sub-open")+"']").toggleClass("open");
});
$("#dedicated .detail>div .l table tbody [data-sub-content]").hover(function(){
  $("#dedicated .detail>div .l table tbody [data-sub-content='"+$(this).attr("data-sub-content")+"']").toggleClass("open");
});
$("#dedicated .detail>div .l table tbody tr [data-sub-open]").blur(function(){
  $("#dedicated .detail>div .l table tbody [data-sub-content='"+$(this).attr("data-sub-open")+"']").toggleClass("open");
});
$("#dedicated .detail>div .l table tbody [data-sub-content]").blur(function(){
  $("#dedicated .detail>div .l table tbody [data-sub-content='"+$(this).attr("data-sub-content")+"']").toggleClass("open");
});
$('#dedicated .quality .owl-carousel').owlCarousel({
  loop:true,
  dots:true,
  items:1
});
$( ".responsiveMenu" ).click(function() {
  $( ".newMobile" ).addClass('active');
});

$( ".newMobileClose" ).click(function() {
  $( ".newMobile" ).removeClass('active')
});

$( "#goTop" ).click(function() {
  $('html, body').animate({ scrollTop: 0 }, 1200);
});

$( ".footerMenuTitle" ).click(function() {
  if ($(window).width() < 993) {
   $( this ).next('.footerMenuNav').slideToggle(400);
 }
});

$( ".headerTopLang>a" ).click(function() {
  $( ".headerTopLang ul" ). slideToggle(400);
});

$( ".hasStats .bot" ).click(function() {
  $(this).next('.hiddenStats').slideToggle(400);;
});

$( ".faqListTabTitle" ).click(function() {
  $(this).closest('.faqListTab').toggleClass('active');
  $(this).next('.faqListTabContent').slideToggle(400);
});

$('.homeVideosSlider').owlCarousel({
    loop:true,
  autoplay:false,
  autoplayTimeout:2000,
  smartSpeed:2000,
  dots:true,
  nav:true,
  navClass: [ 'homeVideosSliderArrow flaticon-arrow-pointing-to-right left', 'homeVideosSliderArrow flaticon-arrow-pointing-to-right right' ],
  navText: [ '', '' ],
  margin:0,
  responsive:{
      0:{
          items:1
      },
      600:{
          items:1
      },
      992:{
          items:1
      }
  }
})

$('.platformSlider').owlCarousel({
    loop:true,
  autoplay:false,
  autoplayTimeout:2000,
  smartSpeed:2000,
  dots:true,
  nav:true,
  navClass: [ 'platformSliderArrow flaticon-left-arrow left', 'platformSliderArrow flaticon-left-arrow right' ],
  navText: [ '', '' ],
  margin:0,
  responsive:{
      0:{
          items:1
      },
      600:{
          items:1
      },
      992:{
          items:1
      }
  }
})

wow = new WOW({
animateClass: 'animated',
offset:       100,
mobile:       true,
callback:     function(box) {
}
});
wow.init();

jQuery(document).ready(function($) {

$(window).load(function(){
  $('#preloader').fadeOut('slow',function(){$(this).remove();});
});


$('.homeSlider').owlCarousel({
  loop:true,
autoplay:true,
autoplayTimeout:7000,
autoplayHoverPause: true,
smartSpeed:1500,
animateIn: 'fadeIn',
animateOut: 'fadeOut',
dots:false,
nav:false,
navClass: [ 'homeVideosSliderArrow flaticon-arrow-pointing-to-right left', 'homeVideosSliderArrow flaticon-arrow-pointing-to-right right' ],
navText: [ '', '' ],
margin:0,
responsive:{
    0:{
        items:1
    },
    600:{
        items:1
    },
    992:{
        items:1
    }
}
})



});

$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})

$( ".sidebarMenu>nav>ul>li>a" ).click(function() {
  $(this ).closest('li').toggleClass('active');
  $(this ).closest('li').find('ul').slideToggle(400);
});

$( ".fixedModalDiv .fixedModalClose" ).click(function() {
  $(this).closest('.fixedModal').fadeOut(400);

});

$(window).scroll(function() {
    var scroll = $(window).scrollTop();

     //>=, not <=
    if (scroll >= 111) {
        $("body").addClass('fixedBody');

    } else {

      $("body").removeClass("fixedBody");
    }
}); //missing );

$( ".newMobileMenu>nav>ul>li>a" ).click(function() {
  $(this).closest('li').toggleClass('active');
  $(this).next('ul').slideToggle(400);
});

// Hide Header on on scroll down
var didScroll;
var lastScrollTop = 0;
var delta = 5;
var navbarHeight = $('.headerAll').outerHeight();

$(window).scroll(function(event){
    didScroll = true;
});

setInterval(function() {
    if (didScroll) {
        hasScrolled();
        didScroll = false;
    }
}, 250);

function hasScrolled() {
    var st = $(this).scrollTop();


    // Make sure they scroll more than delta
    if(Math.abs(lastScrollTop - st) <= delta)
        return;

    // If they scrolled down and are past the navbar, add class .nav-up.
    // This is necessary so you never see what is "behind" the navbar.
    if (st > lastScrollTop && st > navbarHeight){
        // Scroll Down
        $('.headerAll').removeClass('nav-down').addClass('nav-up');
    } else {
        // Scroll Up
        if(st + $(window).height() < $(document).height()) {
            $('.headerAll').removeClass('nav-up').addClass('nav-down');
        }
    }

    lastScrollTop = st;
}


function setCookie(cname,cvalue,exdays) {
  var d = new Date();
  d.setTime(d.getTime() + (exdays*24*60*60*1000));
  var expires = "expires=" + d.toGMTString();
  document.cookie = cname+"="+cvalue+"; "+expires;
}

function getCookie(cname) {
  var name = cname + "=";
  var ca = document.cookie.split(';');
  for(var i=0; i<ca.length; i++) {
      var c = ca[i];
      while (c.charAt(0)==' ') c = c.substring(1);
      if (c.indexOf(name) == 0) {
          return c.substring(name.length, c.length);
      }
  }
  return "";
}

function showOnceInADay() {
  var user=getCookie("isSeen");
  if (user != "") {
  } else {
        $('#popupModel').modal('show');
         setCookie("isSeen", 1, 0.5);
  }
}

$(window).on('load', function() {

 //showOnceInADay();

});
