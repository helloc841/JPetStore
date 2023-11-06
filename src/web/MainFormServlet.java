package web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class MainFormServlet extends HttpServlet {
    private static final String URL_MAIN = "/WEB-INF/jsp/catalog/main.jsp";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println(123456);
        System.out.println(URL_MAIN);
        req.getRequestDispatcher(URL_MAIN).forward(req,resp);
    }
}
