package web.Order;

import pojo.Order;
import service.CartService;
import service.OrderService;
import web.Filter.OrderFilter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class ViewOrderServlet extends HttpServlet {
    private static final String URL_VIEWORDER = "/WEB-INF/JSP/order/vieworder.jsp";
    private OrderService orderService = new OrderService();
    private CartService cartService = new CartService();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Order order = (Order) session.getAttribute("order");
        System.out.println(order.toString());
        orderService.setUserOrder(order);

        cartService.deleteAllCarItem(order.getUsername());
        OrderFilter orderFilter = new OrderFilter();
        orderFilter.doFilter(req,resp,null);
        req.getRequestDispatcher(URL_VIEWORDER).forward(req,resp);
    }
}
