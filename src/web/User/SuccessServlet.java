package web.User;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import pojo.Logmsg;
import service.LogService;
import service.logAndregService;
public class SuccessServlet extends HttpServlet {
    private static final String URL_SIGNIN = "/WEB-INF/JSP/User/signin.jsp";
    private static final String URL_MAINPAGE = "loginmainpage";
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       logAndregService logandregservice = new logAndregService();
       String username = req.getParameter("username");
       String password = req.getParameter("password");
       if (logandregservice.userLogin(username,password)){
           req.setAttribute("username",username);
           req.getRequestDispatcher(URL_MAINPAGE).forward(req,resp);
       }
       else
           req.getRequestDispatcher(URL_SIGNIN).forward(req,resp);
    }
}
