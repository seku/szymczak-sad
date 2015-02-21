$(document).ready(function() {
  height = $(window).height()
  $(".container-fluid").height(height)

  $(".menuItem").click(function(event) {
    event.stopPropagation()
    scrollTo = $(this).attr("data-target")
    $("#" + scrollTo).animatescroll()
  })
});
