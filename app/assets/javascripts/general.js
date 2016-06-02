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


  // Fixes bootstrap dropdown menus sticking
  $(".dropdown-menu a").click(function() {
    $(this).closest(".dropdown-menu").prev().dropdown("toggle");
  });

  // Close modal after form submit
  // $('#documentUploadForm').on('submit', function(){
  //   $('#documentUploadModal').modal('toggle');
    // $('body').removeClass('modal-open');
    // $('.modal-backdrop').remove();
  // });

});

// Collapses sidebar
function collapseSidebar() {
  if (window.matchMedia('(max-width: 767px)').matches) {
      if (!$("#sidebar").hasClass('collapsed')){
        $('#sidebar').addClass('collapsed');
      }
  }
}
