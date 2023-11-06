package web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import pojo.User;
import service.logAndregService;

public class MyAccountServlet extends HttpServlet {
    private static final String URL_MYACCOUNT = "/WEB-INF/JSP/myaccount.jsp";
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        logAndregService logandregservice = new logAndregService();
        String username =req.getParameter("username");
        User user = logandregservice.getAccount(username);
        String msg = (String) req.getAttribute("msg");
        if (msg != null){
            System.out.println("msg != null");
            username = (String) req.getAttribute("username");
        }
        if (user != null){
            req.setAttribute("username",user.getUsername());
            req.setAttribute("firstname",user.getFirstname());
            req.setAttribute("lastname",user.getLastname());
            req.setAttribute("email",user.getEmail());
            req.setAttribute("phone",user.getPhone());
            req.setAttribute("address1",user.getAddress1());
            req.setAttribute("address2",user.getAddress2());
            req.setAttribute("city",user.getCity());
            req.setAttribute("state",user.getState());
            req.setAttribute("zipcode",user.getZipcode());
            req.setAttribute("country",user.getCountry());
            switch (user.getLanguage()){
                case "english" : req.setAttribute("language",1);break;
                case "japanese" : req.setAttribute("language",2);break;
            }
            switch (user.getLovecategory()){
                case "FISH" : req.setAttribute("lovecategory",1);break;
                case "DOGS" : req.setAttribute("lovecategory",2);break;
                case "REPTILES" : req.setAttribute("lovecategory",3);break;
                case "CATS" : req.setAttribute("lovecategory",4);break;
                default:req.setAttribute("lovecategory",5);
            }
            req.getRequestDispatcher(URL_MYACCOUNT).forward(req,resp);
        }
        else {
            System.out.println(123456789);
        }
    }
}
