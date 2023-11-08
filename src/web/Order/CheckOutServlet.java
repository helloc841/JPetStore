package web.Order;

import pojo.Cart;
import pojo.CartItem;
import pojo.Order;
import service.CartService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class CheckOutServlet extends HttpServlet {
    private static final String URL_CHECKOUT = "/WEB-INF/JSP/order/checkout.jsp";
    CartService cartService;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Order order = new Order();
        cartService = new CartService();
        HttpSession session = req.getSession();
        String username = (String) session.getAttribute("username");

        Cart cartnew = new Cart();
        cartnew.setItemList(cartService.getListCardItem(username));
        cartnew.setTotal();
        order.setUsername(username);
        order.setTotalPrice("$"+cartnew.getTotal());
        order.setItemList(cartnew.getItemList());
        session = req.getSession();
        session.setAttribute("cart",cartnew);
        session.setAttribute("username",username);
        session.setAttribute("order",order);
        req.getRequestDispatcher(URL_CHECKOUT).forward(req,resp);
    }
}
