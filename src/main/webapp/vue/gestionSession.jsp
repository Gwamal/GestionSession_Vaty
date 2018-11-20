<%-- 
    Document   : gestionSession
    Created on : 20 nov. 2018, 13:55:38
    Author     : vanat
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Devine un nombre</title>
    </head>
    <c:choose>
        <c:when test="${empty joueur}">
            <body>
                <h1>Bienvenue dans notre jeu</h1>
                <hr/>
                <p><b>${numberConnected} joueurs connectés</b></p>
                <hr/>
                <form method="post">
                    Ton prénom: <input name="playerName" />
                    <input type="submit" value="Connexion" name="action"/>
                </form>
            </body>
        </c:when>
        <c:otherwise>
            <body onload="document.guessForm.guess.focus()">
                <hr>
                <h2>2 joueurs connectés</h2>
                <hr>

                <h3>Hello ${joueur}, Devine mon nombre</h3>

                <c:choose>
                    <c:when test="${empty essaiPrec}">
                        
                    </c:when>
                    <c:otherwise>
                        Essai n°<b>${nbGuess}</b>
                        ${essaiPrec} : <b>${position}</b>
                    </c:otherwise>
                </c:choose>	
                <h2>je pense à un nombre compris entre 0 et 100</h2>
                <form name="guessForm" method="POST" accept-charset="UTF-8" >
                    <input type="text" name="playerName" value="${joueur}" readonly/>
                    <label>Ta proposition : <input type="number" min="0" max="100" required name="guess"></label> 
                    <input type="SUBMIT" name="action" value="Deviner"><br/>
                </form>
                <form method="POST">
                    <input type="SUBMIT" name="action" value="Déconnexion">
                </form>

                <hr>

                <h2>Score à battre : 6 essais par Michel</h2>

            </body>
        </c:otherwise>
    </c:choose>


</html>
