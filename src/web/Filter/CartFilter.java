package web.Filter;

import pojo.Logmsg;
import service.LogService;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebFilter(value = "/cart.jsp")
public class CartFilter implements Filter {
    private LogService logService = new LogService();
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpSession session = ((HttpServletRequest) servletRequest).getSession();
        Logmsg logmsg = new Logmsg();
        String username = (String) session.getAttribute("username");
        logmsg.setUsername(username);
        String itemId = (String) session.getAttribute("itemid");
        logmsg.setItemid(itemId);
        logmsg.setDescription(username + " add "+ itemId + "into "+username+"'s cart");
        logService.addLogmsg(logmsg);
    }
}
