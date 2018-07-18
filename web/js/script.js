$(document).ready(function(e) {

  /*REJOINDRE PARTIE IMG*/
  $('.radioAvatar img').click(function(e) {
    if ($('.monJoueur').length == 0) {
      $(this).addClass('monJoueur');
    } else {
      $('.radioAvatar img').removeClass('monJoueur');
      $(this).addClass('monJoueur');
    }
  });

  /*CLASS CARTES*/
  $('.checkCartes img').click(function(e) {
    if ($(this).hasClass('selectIngre')) {
      $(this).removeClass('selectIngre');
    }else {
      $(this).addClass('selectIngre');
    }

    if ($('.selectIngre').length == 2) {
      $('.boutons label:first-child').css('visibility', 'visible');
    } else {
      $('.boutons label:first-child').css('visibility', 'hidden');
    }
  });

  /*CLASS JOUEUR VICTIME*/
  $('.joueurPartie').click( function(e) {
    if ($(this).hasClass('selectVict')) {
      $(this).removeClass('selectVict');
    } else {
      if ($('.selectVict').length == 0) {
        $(this).addClass('selectVict');
      } else {
        $('.joueurPartie').removeClass('selectVict');
        $(this).addClass('selectVict');
      }
    }
  });

  /*Sommeil profond*/
  if ($('.joueurPartie').hasClass('sommeil')) {
    $('.sommeil .infoJoueur').append('En sommeil profond');
  }

  /*A la main*/
  if ($('.joueurPartie').hasClass('aLaMain')) {
    $('.aLaMain .infoJoueur').append('A la main');
  }

  if ($('.joueurPartie').hasClass('perdu')) {
    $('.perdu .infoJoueur').append('Perdu');
  }

});
