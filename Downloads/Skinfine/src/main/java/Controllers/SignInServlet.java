package Controllers;

import Repository.Account.AccountDTO;
import Repository.Account.AccountDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

public class SignInServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String URL = "SignIn.jsp";
        try{
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        AccountDTO user = null;
        try {
            user = AccountDAO.getAccount(username, password);
        } catch (ClassNotFoundException | SQLException e) {
        }
        if (user != null) {
        HttpSession session = request.getSession();
        session.setAttribute("user", user);
        URL = "Home.jsp";
        } else {
        request.setAttribute("incorrectAuthInputFlag", true);
        }
        } finally{
            RequestDispatcher rd = request.getRequestDispatcher(URL);
            rd.forward(request, response);
        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
