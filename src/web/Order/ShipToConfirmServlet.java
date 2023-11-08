package web.Order;

import pojo.Order;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class ShipToConfirmServlet extends HttpServlet {
    private static final String URL_CONFIRM = "/WEB-INF/JSP/order/confirmorder.jsp";
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Order order = (Order) session.getAttribute("order");
        order.setShipToFirstName(req.getParameter("firstname"));
        order.setShipToLastName(req.getParameter("lastname"));
        order.setShipAddress1(req.getParameter("address1"));
        order.setShipAddress2(req.getParameter("address2"));
        order.setShipCity(req.getParameter("city"));
        order.setShipState(req.getParameter("state"));
        order.setShipZip(req.getParameter("zipcode"));
        order.setShipCountry(req.getParameter("country"));
        session.setAttribute("order",order);
        req.getRequestDispatcher(URL_CONFIRM).forward(req,resp);
    }
}
