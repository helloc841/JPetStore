package web.Cart;

import pojo.Cart;
import pojo.CartItem;
import service.CartService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class UpdateCartServlet extends HttpServlet {
    private static final String URL_CART = "/WEB-INF/JSP/cart/cart.jsp";
    CartService cartService;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        cartService = new CartService();
        HttpSession session = req.getSession();
        String username = (String) session.getAttribute("username");
        Cart cart = (Cart) session.getAttribute("cart");
        for (CartItem cartItem : cart.getItemList()){
            String itemid = cartItem.getItemId();
            String quantityStr = req.getParameter(itemid);
            if (quantityStr != null && itemid != null){
                int quantity = Integer.parseInt(quantityStr);
                if (quantity != cartItem.getQuantity()){
                    cartService.updateCartItem(username,itemid,quantity);
                }
            }
        }

        Cart cartnew = new Cart();
        cartnew.setItemList(cartService.getListCardItem(username));
        cartnew.setTotal();
        session = req.getSession();
        session.setAttribute("cart",cartnew);
        session.setAttribute("username",username);
        req.getRequestDispatcher(URL_CART).forward(req,resp);
    }
}
