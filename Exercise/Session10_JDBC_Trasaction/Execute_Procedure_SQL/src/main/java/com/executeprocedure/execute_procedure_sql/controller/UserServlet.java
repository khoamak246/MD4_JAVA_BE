package com.executeprocedure.execute_procedure_sql.controller;

import com.executeprocedure.execute_procedure_sql.model.User;
import com.executeprocedure.execute_procedure_sql.service.IUserService;
import com.executeprocedure.execute_procedure_sql.service.UserServiceIMPL;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet", value = "/UserServlet")
public class UserServlet extends HttpServlet {
    private static final IUserService userService = new UserServiceIMPL();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null)
            action = "";

        switch (action) {
            case "create":
                showFormCreateUser(request, response);
                break;
            case "edit":
                showFormEdit(request, response);
                break;
            case "delete":
                showFormDelete(request, response);
                break;
            default:
                listUser(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null)
            action = "";

        switch (action) {
            case "create":
                createUser(request, response);
                break;
            case "edit":
                updateUser(request, response);
                break;
            case "delete":
                deleteUser(request, response);
                break;
            default:
                break;
        }
    }

    // doPost
    private void createUser(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");
        userService.save(new User(name, age, email, phoneNumber));
        request.setAttribute("message", "Add successfully!");
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");
        User updateUser = new User(id, name, age, email, phoneNumber);
        userService.update(updateUser);
        request.setAttribute("message", "Update successfully!");
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/update.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        userService.deleteById(id);
        try {
            response.sendRedirect("UserServlet");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    // showForm
    private void listUser(HttpServletRequest request, HttpServletResponse response){
        List<User> users = userService.findAll();
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/list.jsp");
        request.setAttribute("listUser", users);
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    };

    private void showFormCreateUser(HttpServletRequest request, HttpServletResponse response) {
       RequestDispatcher dispatcher = request.getRequestDispatcher("user/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showFormEdit(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/update.jsp");
        User user = userService.getUserById(id);
        request.setAttribute("user", user);
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showFormDelete(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/delete.jsp");
        User delUser = userService.getUserById(id);
        request.setAttribute("user", delUser);
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }
}
