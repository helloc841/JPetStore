package web;

import web.Filter.SignOutFilter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class MainServlet extends HttpServlet {
    private static final String URL_MAINPAGE= "/mainpage.jsp";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        if (username != null){
            req.setAttribute("username",username);
            SignOutFilter signOutFilter = new SignOutFilter();
            signOutFilter.doFilter(req,resp,null);
        }
        req.getRequestDispatcher(URL_MAINPAGE).forward(req,resp);
    }
}
