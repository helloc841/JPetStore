package web.Order;

import pojo.Order;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class ListOrderItemServlet extends HttpServlet {
    private static final String URL_LISTITEM = "/WEB-INF/JSP/order/listItem.jsp";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        List<Order> orders = (List<Order>) session.getAttribute("orders");
        String  orderIdStr = (String) req.getParameter("orderId");
        int orderId = Integer.parseInt(orderIdStr);
        Order order = null;
        for (Order order1 : orders){
            if (order1.getOrderId() == orderId)
            {
                order = order1;
                break;
            }
        }
        session.setAttribute("order",order);
        req.getRequestDispatcher(URL_LISTITEM).forward(req,resp);
    }
}
