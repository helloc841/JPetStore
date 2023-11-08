package web.Order;

import pojo.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import service.logAndregService;

public class OrderFormServlet extends HttpServlet {
    private logAndregService logAndregService = new logAndregService();
    private static final String URL_ORDFORM = "/WEB-INF/JSP/order/orderform.jsp";
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String username = (String) session.getAttribute("username");
        User user = logAndregService.getAccount(username);
        session.setAttribute("user",user);
        req.getRequestDispatcher(URL_ORDFORM).forward(req,resp);
    }
}
