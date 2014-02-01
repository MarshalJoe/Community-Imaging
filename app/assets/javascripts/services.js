// script for hide/show
  $("#fAQ dt").click( function () {
    $(this).siblings("dd").slideUp();
    $(this).next("dd").slideDown();
  });
