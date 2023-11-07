package web.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginMainPageServlet extends HttpServlet {
    private static final String URL_LOGNIN = "/WEB-INF/JSP/User/loginmainpage.jsp";
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher(URL_LOGNIN).forward(req,resp);
    }
}
