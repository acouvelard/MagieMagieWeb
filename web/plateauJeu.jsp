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
      <!--      <c:forEach items="${afficherEnnemis}" var="joueurAct">
              <div class="joueurPartie" joueurId="${joueurAct.id}">
                <img src="images/${joueurAct.avatar}.jpg" alt="avatar">
                <span>${joueurAct.pseudo}</span>
                <span>${joueurAct.cartes.size} cartes</span>
              </div>
            </c:forEach>-->
            <div class="joueurPartie" joueurId="1">
              <img src="images/avatar1.jpg" alt="avatar">
              <span>j1</span>
              <span>2 cartes</span>
            </div>
            <div class="joueurPartie" joueurId="1">
              <img src="images/avatar1.jpg" alt="avatar">
              <span>j1</span>
              <span>2 cartes</span>
            </div>
            <div class="joueurPartie" joueurId="1">
              <img src="images/avatar1.jpg" alt="avatar">
              <span>j1</span>
              <span>2 cartes</span>
            </div>

        </article>

        <article class="moi">

            <form action="action" class="boutons">
              <label>
                <input type="radio" name="action" value="LancerSort">
                <button type="button" >Lancer un sort</button>
              </label>
              <label>
                <input type="radio" name="action" value="PasserTour">
                <button type="button" >Passer son tour</button>
              </label>
            </form>

          <div>
            <div class="checkCartes">
      <!--      <c:forEach items="${mesCartes}" var="carteAct">
                <img src="images/${carteAct.ingre}.jpg" alt="${carteAct.id}" >
            </c:forEach>-->
              <img src="images/ingredients.png" alt="ingre">
              <img src="images/ingredients.png" alt="ingre">
              <img src="images/ingredients.png" alt="ingre">
              <img src="images/ingredients.png" alt="ingre">
            </div>
          </div>
        </article>

      </section>
      <c:import url="_LINKSCRIPT.jsp"></c:import>
    </body>
</html>
