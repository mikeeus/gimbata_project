$(document).ready(function(){

  collapseSidebar();
  // For collapsable sidebar
  /* to toggle the sidebar, just switch the CSS classes */
  $('.toggle-sidebar').click(function(){
    $("#sidebar").toggleClass("sidebar-collapsed");
    $("#sidebar-toggle").toggleClass("sidebar-closed");
    $("#content").toggleClass("sidebar-closed sidebar-open");
  });

  // Collapses sidebar whenever window size is changed
  $(window).resize(collapseSidebar);

});

// Collapses sidebar
function collapseSidebar() {
  if (window.matchMedia('(max-width: 767px)').matches) {
      if (!$("#sidebar").hasClass('collapsed')){
        $('#sidebar').addClass('collapsed');
      }
  }
}
