package web.Cart;

import pojo.Cart;
import service.CartService;
import service.CategoryService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class RemoveServlet extends HttpServlet {
    private static final String URL_CART = "/WEB-INF/JSP/cart/cart.jsp";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CartService cartService = new CartService();
        String itemid = req.getParameter("itemid");
        String username = req.getParameter("username");
        cartService.deleteCartItem(username,itemid);

        Cart cart = new Cart();
        cart.setItemList(cartService.getListCardItem(username));
        cart.setTotal();
        HttpSession session = req.getSession();
        session.setAttribute("cart",cart);
        session.setAttribute("username",username);
        req.getRequestDispatcher(URL_CART).forward(req,resp);
    }
}
