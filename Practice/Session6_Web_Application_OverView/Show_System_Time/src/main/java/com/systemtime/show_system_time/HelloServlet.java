package com.systemtime.show_system_time;

import java.io.*;
import java.util.Date;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet("/time-world")
public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<h1> Hello World </h1>");
        out.println("</html>");
        out.println("<html>");
        Date today = new Date();
        out.println("<h1>" + today + "</h1>");
        out.println("</html>");
    }

}