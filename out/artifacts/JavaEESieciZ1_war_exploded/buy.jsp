<%@ page import="businesslogic.PriceCalculator" %>
<%@ page import="model.Product" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
          integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <title>Title</title>
</head>
<body>
<table class="table">
    <thead class="thead-dark">
    <tr>
        <th scope="col">#</th>
        <th scope="col">Nazwa</th>
        <th scope="col">Cena</th>
    </tr>
    </thead>
    <tbody>
    <%
        int i = 1;
        List<Product> products = (List<Product>) request.getAttribute("products");
        for (Product p : products) {
    %>
    <tr>
        <th scope="row"><%=i%>
        </th>
        <td><%=p.getName()%>
        </td>
        <td><%=p.getCena()%>
        </td>
    </tr>
    <%
            i++;
        }
    %>
    </tbody>
</table>

<h2>Suma zakupow:
    <%
        PriceCalculator priceCalculator = new PriceCalculator();
        out.println(priceCalculator.suma(products.get(0).getCena(), products.get(1).getCena(), products.get(2).getCena(), products.get(3).getCena()));
    %></h2>

<h2>Srednia zakupow:
    <%
        out.println(priceCalculator.srednia(products.get(0).getCena(), products.get(1).getCena(), products.get(2).getCena(), products.get(3).getCena()));
    %>
</h2>
</body>
</html>
