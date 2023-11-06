package web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import service.*;
import pojo.*;

public class CardServlet extends HttpServlet {
    private static final String URL_LOGIN = "/WEB-INF/JSP/signin.jsp";
    private static final String URL_CART = "/WEB-INF/JSP/cart.jsp";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CategoryService categoryService = new CategoryService();
        CartService cartService = new CartService();
        String itemId = req.getParameter("itemid");
        String quantity = req.getParameter("quantity");
        String username = req.getParameter("username");
        if (username == null)
            req.getRequestDispatcher(URL_LOGIN).forward(req,resp);
        else {
            Cart cart = new Cart();
            if (itemId != null){
                CartItem cartItem = new CartItem();
                Item item = categoryService.getItemsById(itemId).get(0);
                cartItem.setItemId(itemId);
                cartItem.setInStock("true");
                if (quantity != null){
                    cartItem.setQuantity(Integer.parseInt(quantity));
                }
                else
                    cartItem.setQuantity(1);
                cartItem.setItemName(item.getItemname());
                cartItem.setTotal(item.getPrice());
                cartService.addCartItem(username , cartItem);
                cart.setItemList(cartService.getListCardItem(username));
            }
            HttpSession session = req.getSession();
            session.setAttribute("cart",cart);
            session.setAttribute("username",username);
            req.getRequestDispatcher(URL_CART).forward(req,resp);
        }
    }
}
