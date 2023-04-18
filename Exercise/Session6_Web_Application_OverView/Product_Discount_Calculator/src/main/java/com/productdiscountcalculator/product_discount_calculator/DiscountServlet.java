package com.productdiscountcalculator.product_discount_calculator;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "discount", value = "/discount")
public class DiscountServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String description = request.getParameter("description");
        float price = Float.parseFloat(request.getParameter("price"));
        float discount = Float.parseFloat(request.getParameter("discount"));
        float discountAmount = (float) (price * discount * 0.01);
        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + description + "</h1>");
        out.println("<h1>" + price + "</h1>");
        out.println("<h1>" + discount + "</h1>");
        out.println("<h1>" + discountAmount + "</h1>");
        out.println("</body></html>");
    }

}