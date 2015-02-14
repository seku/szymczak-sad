$(document).ready(function() {
  $(".menuItem").click(function(event) {
    event.stopPropagation()
    scrollTo = $(this).attr("data-target")
    $("#" + scrollTo).animatescroll()
  })
});
