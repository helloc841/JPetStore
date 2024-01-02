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

        order.setShipToFirstName(req.getParameter("firstname1"));
        order.setShipToLastName(req.getParameter("lastname1"));
        order.setShipAddress1(req.getParameter("address11"));
        order.setShipAddress2(req.getParameter("address21"));
        order.setShipCity(req.getParameter("city1"));
        order.setShipState(req.getParameter("state1"));
        order.setShipZip(req.getParameter("zipcode1"));
        order.setShipCountry(req.getParameter("country1"));
        session.setAttribute("order",order);
        req.getRequestDispatcher(URL_CONFIRM).forward(req,resp);
    }
}
