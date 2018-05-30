package controller;

import model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@WebServlet("/buy") //name = "ShopController"
public class ShopController extends HttpServlet {

    private List<Product> products;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        products = new ArrayList<>();

        if (request.getParameter("name1").isEmpty() ||
                request.getParameter("cena1").isEmpty() ||
                request.getParameter("name2").isEmpty() ||
                request.getParameter("cena2").isEmpty() ||
                request.getParameter("name3").isEmpty() ||
                request.getParameter("cena3").isEmpty() ||
                request.getParameter("name4").isEmpty() ||
                request.getParameter("cena4").isEmpty()) {
            response.sendRedirect("/empty");
        }
        else {

            Product p1 = new Product(request.getParameter("name1"), Double.parseDouble(request.getParameter("cena1")));
            Product p2 = new Product(request.getParameter("name2"), Double.parseDouble(request.getParameter("cena2")));
            Product p3 = new Product(request.getParameter("name3"), Double.parseDouble(request.getParameter("cena3")));
            Product p4 = new Product(request.getParameter("name4"), Double.parseDouble(request.getParameter("cena4")));

            products.add(p1);
            products.add(p2);
            products.add(p3);
            products.add(p4);

            request.setAttribute("products", products);
            request.getRequestDispatcher("buy.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

