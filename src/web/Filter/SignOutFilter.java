package web.Filter;

import pojo.Logmsg;
import service.LogService;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
public class SignOutFilter implements Filter{
    private LogService logService = new LogService();
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        String username = (String) servletRequest.getAttribute("username");
        Logmsg logmsg = new Logmsg();
        logmsg.setUsername(username);
        logmsg.setItemid("noitem");
        logmsg.setDescription(username + " sign out");
        logService.addLogmsg(logmsg);
    }
}
