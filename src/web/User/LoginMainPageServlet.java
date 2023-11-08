package web.User;

import web.Filter.LogFilter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginMainPageServlet extends HttpServlet {
    private static final String URL_LOGNIN = "/WEB-INF/JSP/User/loginmainpage.jsp";
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LogFilter logFilter = new LogFilter();
        logFilter.doFilter(req,resp,null);
        req.getRequestDispatcher(URL_LOGNIN).forward(req,resp);
    }
}
