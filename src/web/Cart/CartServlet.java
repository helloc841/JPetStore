package web.Cart;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import service.*;
import pojo.*;
import web.Filter.CartFilter;

public class CartServlet extends HttpServlet {
    private static final String URL_LOGIN = "/WEB-INF/JSP/User/signin.jsp";
    private static final String URL_CART = "/WEB-INF/JSP/cart/cart.jsp";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CategoryService categoryService = new CategoryService();
        CartService cartService = new CartService();
        String username = req.getParameter("username");
        if (username == null)
            req.getRequestDispatcher(URL_LOGIN).forward(req,resp);
        else {
            String itemId = req.getParameter("itemid");
            System.out.println("itemId:"+itemId);
            String Categgory = req.getParameter("Category");
            String productid = req.getParameter("productid");
            Cart cart = new Cart();
            CartItem cartItem = new CartItem();
            if (itemId != null){
                Item item = categoryService.getItemsById(itemId).get(0);
                cartItem.setPrice(item.getPrice());
                cartItem.setItemId(itemId);
                cartItem.setProductid(productid);
                cartItem.setInStock("true");
                cartItem.setCategory(Categgory);
                cartItem.setQuantity(1);
                cartItem.setTotalByPrice();
                cartItem.setItemName(item.getItemname());
                cartItem.setPrice(item.getPrice());
                cartService.addCartItem(username,cartItem);
            }
            cart.setItemList(cartService.getListCardItem(username));
            cart.setTotal();
            HttpSession session = req.getSession();
            session.setAttribute("cart",cart);
            session.setAttribute("username",username);
            session.setAttribute("itemid",itemId);
            CartFilter cartFilter = new CartFilter();
            cartFilter.doFilter(req,resp,null);
            req.getRequestDispatcher(URL_CART).forward(req,resp);
        }
    }
}
