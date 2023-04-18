package com.withtransaction.executesql_with_transaction.controller;

import com.withtransaction.executesql_with_transaction.model.User;
import com.withtransaction.executesql_with_transaction.service.IUserService;
import com.withtransaction.executesql_with_transaction.service.UserServiceIMPL;

import java.io.*;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/users")
public class UserServlet extends HttpServlet {
    private IUserService userService;

    public void init() {
        userService = new UserServiceIMPL();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        try {
            switch (action) {
                case "permision":
                    addUserPermision(request, response);
                    break;
                case "test-use-tran":
                    testWithoutTran(request, response);
                    break;
                default:
                    listUser(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void addUserPermision(HttpServletRequest request, HttpServletResponse response) {
        User user = new User("chinhnd", "chinhnd@rikkei.academy", "vn");
        int[] permision = {1, 2, 4};
        userService.addUserTransaction(user, permision);
    }

    private void listUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<User> listUser = userService.selectAllUsers();
        request.setAttribute("listUser", listUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/list.jsp");
        dispatcher.forward(request, response);
    }
    private void testWithoutTran(HttpServletRequest request, HttpServletResponse response) {
        userService.insertUpdateWithoutTransaction();
    }

}
