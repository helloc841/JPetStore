package web.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import pojo.User;
import service.logAndregService;

public class RegisterSuccessServlet extends HttpServlet {
    private static final String URL_MAINPAGE = "loginmainpage";
    private static final String URL_REGISTER = "/WEB-INF/JSP/User/register.jsp";
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        logAndregService logandregservice = new logAndregService();
        User user = new User();
        user.setUsername(req.getParameter("username"));
        user.setPassword(req.getParameter("password"));
        user.setRepeatPassword(req.getParameter("repeatedPassword"));
        user.setFirstname(req.getParameter("account.firstName"));
        user.setLastname(req.getParameter("account.lastName"));
        user.setEmail(req.getParameter("account.email"));
        user.setPhone(req.getParameter("account.phone"));
        user.setAddress1(req.getParameter("account.address1"));
        user.setAddress2(req.getParameter("account.address2"));
        user.setCity(req.getParameter("account.city"));
        user.setState(req.getParameter("account.state"));
        user.setZipcode(req.getParameter("account.zip"));
        user.setCountry(req.getParameter("account.country"));
        user.setLanguage(req.getParameter("account.languagePreference"));
        user.setLovecategory(req.getParameter("account.favouriteCategoryId"));
        String msg = logandregservice.userRegister(user);
        if (msg.equals("success")){
            req.setAttribute("username",user.getUsername());
            req.getRequestDispatcher(URL_MAINPAGE).forward(req,resp);
        }
        else {
            req.setAttribute("msg",msg);
            req.getRequestDispatcher(URL_REGISTER).forward(req,resp);
        }
    }
}
