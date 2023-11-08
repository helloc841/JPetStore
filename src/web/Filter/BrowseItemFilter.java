package web.Filter;

import pojo.Logmsg;
import service.LogService;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
@WebFilter(value = "/itemdetail.jsp")
public class BrowseItemFilter implements Filter {
    private LogService logService = new LogService();
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        Logmsg logmsg = new Logmsg();
        String username = (String) servletRequest.getAttribute("username");
        logmsg.setUsername(username);
        String itemId = (String) servletRequest.getAttribute("itemid");
        logmsg.setItemid(itemId);
        logmsg.setDescription(username + " browse "+ itemId);
        logService.addLogmsg(logmsg);
    }
}
