$( ".cross" ).hide();
$( ".menu" ).hide();

$( ".hamburger" ).click(function() {
  $( ".menu" ).slideToggle( "slow");
  $("menu").slideToggle()
  });
});

$( ".cross" ).click(function() {
  $( ".menu" ).slideToggle( "slow");
  $( ".cross" ).hide();
  $( ".hamburger" ).show();
});