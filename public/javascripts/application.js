$(document).ready(function() {
  height = $(window).height()
  if (height < 700) {
    height = 700
  }

  $(".container-fluid").height(height)

  $(".menuItem").click(function(event) {
    event.stopPropagation()
    scrollTo = $(this).attr("data-target")
    $("#" + scrollTo).animatescroll()
  })
});
