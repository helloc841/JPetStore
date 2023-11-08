package web.Order;

import pojo.Order;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class ConfirmServlet extends HttpServlet {
    private static final String URL_CONFIRM = "/WEB-INF/JSP/order/confirmorder.jsp";
    private static final String URL_SHIP = "/WEB-INF/JSP/order/shipping.jsp";
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String formattedDateTime = now.format(formatter);
        HttpSession session = req.getSession();

        String checkbox = req.getParameter("checkship");
        Order order = (Order) session.getAttribute("order");
        order.setOrderDate(formattedDateTime);
        order.setCardType(req.getParameter("CartType"));
        order.setCreditCard(req.getParameter("CartNumber"));
        order.setExpiryDate(req.getParameter("ExpiryDate"));
        order.setBillToFirstName(req.getParameter("firstname"));
        order.setBillToLastName(req.getParameter("lastname"));
        order.setBillAddress1(req.getParameter("address1"));
        order.setBillAddress2(req.getParameter("address2"));
        order.setBillCity(req.getParameter("city"));
        order.setBillState(req.getParameter("state"));
        order.setBillZip(req.getParameter("zipcode"));
        order.setBillCountry(req.getParameter("country"));
        order.setShipToFirstName(req.getParameter("firstname"));
        order.setShipToLastName(req.getParameter("lastname"));
        order.setShipAddress1(req.getParameter("address1"));
        order.setShipAddress2(req.getParameter("address2"));
        order.setShipCity(req.getParameter("city"));
        order.setShipState(req.getParameter("state"));
        order.setShipZip(req.getParameter("zipcode"));
        order.setShipCountry(req.getParameter("country"));
        session.setAttribute("order",order);
        if (checkbox == null)
        req.getRequestDispatcher(URL_CONFIRM).forward(req,resp);
        else
            req.getRequestDispatcher(URL_SHIP).forward(req,resp);
    }
}
