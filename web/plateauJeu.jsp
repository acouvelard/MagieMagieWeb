<%--
    Document   : plateauJeu
    Created on : 13 juil. 2018, 11:51:09
    Author     : Administrateur
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <c:import url="_LINKHEAD.jsp"></c:import>
        <title>MagieMagie - Partie</title>
    </head>
    <body>
      <section id="plateauJeu" class="mainSection">
        <article>
          <form action="listeDesParties.html" method="post"  class="radioAvatar">
            <label class="joueurPartie">
              <input type="radio" name="joueursEnnemis" value="nomJoueur1">
              <img src="images/Sorcière.jpg" alt="avatar">
              <span>NomJoueur</span>
              <span>2 cartes</span>
            </label>
            <label class="joueurPartie">
              <input type="radio" name="joueursEnnemis" value="nomJoueur2">
              <img src="images/Sorcière.jpg" alt="avatar">
              <span>NomJoueur</span>
              <span>2 cartes</span>
            </label>
            <label class="joueurPartie">
             <input type="radio" name="joueursEnnemis" value="nomJoueur3">
              <img src="images/Sorcière.jpg" alt="avatar">
              <span>NomJoueur</span>
              <span>2 cartes</span>
            </label>
          </form>
        </article>

        <article class="moi">
          <div class="joueurPartie">
            <img src="images/Sorcière.jpg" alt="avatar">
            <span>NomJoueur</span>
            <span>2 cartes</span>
          </div>
          <div class="boutons">
            <button type="button" name="lancerSort">Lancer un sort</button>
            <button type="button" name="passerSonTour">Passer le tour</button>
          </div>
  <!-- TODO: faire l'animation de selection des cartes avec JQuery -->
          <div>
            <form action="listeDesParties.html" method="post" class="checkCartes">
              <label for="maCarte1">
                <input type="checkbox" name="maCarte1" value="carte" checked id="maCarte1">
                <img src="images/ingredients.png" alt="nomIgredient">
              </label>
              <label for="maCarte2">
                <input type="checkbox" name="maCarte2" value="carte" id="maCarte2">
                <img src="images/ingredients.png" alt="nomIgredient">
              </label>
              <label for="maCarte3">
                <input type="checkbox" name="maCarte3" value="carte" id="maCarte3">
                <img src="images/ingredients.png" alt="nomIgredient">
              </label>
              <label for="maCarte4">
                <input type="checkbox" name="maCarte4" value="carte" id="maCarte4">
                <img src="images/ingredients.png" alt="nomIgredient">
              </label>
            </form>
          </div>
        </article>

      </section>
    </body>
</html>
