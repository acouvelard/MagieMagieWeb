/*CLASS CARTES*/
$(".checkCartes img").click(function(e) {
  if ($(this).hasClass("selectIngre")) {
    $(this).removeClass("selectIngre");
  }else {
    $(this).addClass("selectIngre");
  }
});

/*CLASS JOUEUR VICTIME*/
$(".joueurPartie").click( function(e) {
  if ($(this).hasClass("selectIngre")) {
    $(this).removeClass("selectIngre");
  }else {
    $(this).addClass("selectIngre");
  }
});
