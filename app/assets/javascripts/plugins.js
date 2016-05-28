$(document).ready(function(){
  
  // Initialize bootstrap-material-design
  $.material.init();

  

});

// Custom Scrollbar
$(window).load(function(){

  $('.nav-side-menu').mCustomScrollbar({
    axis: 'y',
    scrollInertia: 400,
    mouseWheel: true,
    autoHideScrollbar: true
  });
  
});