$(document).ready(function(){
// For collapsable sidebar
  /* to toggle the sidebar, just switch the CSS classes */
  $('.toggle-sidebar').click(function(){
    $("#sidebar").toggleClass("sidebar-collapsed");
    $("#sidebar-toggle").toggleClass("sidebar-closed");
    $("#content").toggleClass("sidebar-closed sidebar-open");
  });

});