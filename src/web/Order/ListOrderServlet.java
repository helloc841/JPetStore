package web.Order;

import pojo.Order;
import service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class ListOrderServlet extends HttpServlet {
    private OrderService orderService = new OrderService();
    private static final String URL_LISTORDER = "/WEB-INF/JSP/order/listorders.jsp";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        List<Order> orders = orderService.getOrders(username);
        HttpSession session = req.getSession();
        session.setAttribute("orders",orders);
        session.setAttribute("username",username);
        req.getRequestDispatcher(URL_LISTORDER).forward(req,resp);
    }
}
