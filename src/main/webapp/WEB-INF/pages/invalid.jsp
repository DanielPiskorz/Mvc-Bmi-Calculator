<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pl">
    <head>
    
    	<spring:url value="/resources/styles.css" var="styles" />
    	<spring:url value="/resources/fruits.jpg" var="fruits" />
    	<!--<spring:url value="/resources/favicon.ico" var="favicon" /> -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device=width, initial-scale=1.0">
        <title>Kalkulator BMI</title>
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet">
      <!--   <link rel="icon" href="${favicon}"> --> 
        <link rel="stylesheet" href="${styles}">
    </head>
    
    <body>
        <div id="wrapper">
            
            <header>
                <img src="${fruits}" alt="header"><span>Oblicz swoje BMI!</span>
            </header> 
            <section>
                <article><center>
                <h1>Witaj w aplikacji!</h1>
                <h3 style="color:red">Nieprawidłowe dane, proszę wprowadzić liczby.</h3>
                <form method="post" action="http://localhost:8080/mvcbmicalculator/count">
                    <p>Podaj wzrost (cm):</p>
                    <input type="text" name="height">
                    <br>
                    <p>Podaj masę ciała (kg):</p>
                    <input type="text" name="weight">
                    <br>
                    <input type="submit" value="Oblicz BMI !">
                    </form></center>
                </article>
            </section>
            <footer>
            Created by Daniel Piskorz
            </footer>
        </div>
    </body>
</html>