package web.AjaxServlet;

import pojo.Cart;
import service.CartService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class AjaxCartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String itemId = req.getParameter("itemId");
        String Quantity = req.getParameter("quantity");
        System.out.println(username+itemId+Quantity);
        int quantityInt = Integer.parseInt(Quantity);
        CartService cartService = new CartService();
        cartService.updateCartItem(username,itemId,quantityInt);

        Cart cart = new Cart();
        cart.setItemList(cartService.getListCardItem(username));
        cart.setTotal();
        HttpSession session = req.getSession();
        session.setAttribute("cart",cart);

        resp.setContentType("text/plain");
        PrintWriter out = resp.getWriter();
        out.println("success");
    }
}
