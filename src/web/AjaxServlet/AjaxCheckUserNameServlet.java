package web.AjaxServlet;

import service.logAndregService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class AjaxCheckUserNameServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        logAndregService logAndregService = new logAndregService();
        resp.setContentType("text/plain");
        PrintWriter out = resp.getWriter();
        if (logAndregService.isAccountExist(username))
            out.println("exist");
        else
            out.println("no exist");
    }
}
