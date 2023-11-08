package web.Filter;

import pojo.Logmsg;
import service.LogService;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter(value="/loginmainpage.jsp")
public class LogFilter implements Filter {
    private LogService logService = new LogService();
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        Logmsg logmsg = new Logmsg();
        String username = (String) servletRequest.getAttribute("username");
        logmsg.setUsername(username);
        logmsg.setItemid("noitem");
        logmsg.setDescription(username + " log in");
        logService.addLogmsg(logmsg);
    }
}
