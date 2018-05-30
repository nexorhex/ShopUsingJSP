<%--
  Created by IntelliJ IDEA.
  User: Student229665
  Date: 5/24/2018
  Time: 2:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <title>Zad 1 Sieci</title>
  </head>
  <body>
  <h1>Sklep ze wszystkim!</h1>
  <h2>Wpisz nazwy i ceny produktow, ktore chcesz kupić</h2>
  <form method="post" action="buy">
  <input type="text" name="name1">
  <input type="number" step="0.01" name="cena1"><br>
  <input type="text" name="name2">
  <input type="number" step="0.01" name="cena2"><br>
  <input type="text" name="name3">
  <input type="number" step="0.01" name="cena3"><br>
  <input type="text" name="name4">
  <input type="number" step="0.01" name="cena4"><br><br>
  <input type="submit" value="Kup teraz">
  </form>
  </body>
</html>
