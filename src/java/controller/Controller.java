/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author APCL
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private Map<String, String> actionMap = new HashMap<>();

    public Controller() {
        actionMap.put("image", "/image.jsp");
        actionMap.put("rate", "/image.jsp");
        actionMap.put("home", "/home.jsp");
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        
    }



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
        String action = request.getParameter("action");
        if (action == null || !actionMap.containsKey(action)) {
            action = "home";
        }

        // Forward to the requested page.
        request.getRequestDispatcher(actionMap.get(action)).forward(request,
                response);
    }
    
        
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
