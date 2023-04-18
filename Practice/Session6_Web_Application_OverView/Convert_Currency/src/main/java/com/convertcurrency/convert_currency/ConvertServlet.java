package com.convertcurrency.convert_currency;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "convert-money", value = "/convert")
public class ConvertServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        float rate = Float.parseFloat(request.getParameter("rate"));
        float usd = Float.parseFloat(request.getParameter("usd"));
        float vnd = rate * usd;
        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + rate + "</h1>");
        out.println("<h1>" + usd + "</h1>");
        out.println("<h1>" + vnd + "</h1>");
        out.println("</body></html>");
    }

}