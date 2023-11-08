package web.Filter;

import pojo.CartItem;
import pojo.Logmsg;
import pojo.Order;
import service.LogService;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebFilter(value = "/vieworder.jsp")
public class OrderFilter implements Filter{
    private LogService logService = new LogService();
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpSession session = ((HttpServletRequest) servletRequest).getSession();
        Order order = (Order) session.getAttribute("order");
        String username = order.getUsername();
        for (CartItem cartItem : order.getItemList()){
            Logmsg logmsg = new Logmsg();
            logmsg.setUsername(username);
            logmsg.setItemid(cartItem.getItemId());
            logmsg.setDescription("add " + cartItem.getItemId() + " into "+username+"'s order");
            logService.addLogmsg(logmsg);
        }
    }
}
