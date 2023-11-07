package web.Shows;

import pojo.Product;
import service.CategoryService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class CategoryServlet extends HttpServlet {
    private CategoryService categoryService = new CategoryService();
    private static final String URL_LOGINPRODUCTS = "/WEB-INF/JSP/product/loginproducts.jsp";
    private static final String URL_PRODUCTS = "/WEB-INF/JSP/product/products.jsp";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String Category = req.getParameter("Category");
        String countStr = req.getParameter("count");
        String username = req.getParameter("username");
        int count = 0;
        if (countStr != null){
            count = Integer.parseInt(countStr);
        }
        List<Product> products = categoryService.getProducts(Category);
        String productids = "";
        String names = "";
        for (int i = count * 4 ; i < products.size() ; i++){
            productids += products.get(i).getProductid()+"/";
            names += products.get(i).getName() + "/";
        }
        req.setAttribute("Category",Category);
        req.setAttribute("Productid",productids);
        req.setAttribute("Names",names);
        if (count == 0){
            req.setAttribute("count","1");
        }
        else {
            req.setAttribute("count","0");
        }
        if (username == null){
            req.getRequestDispatcher(URL_PRODUCTS).forward(req,resp);
        }
        else {
            System.out.println(234567);
            req.setAttribute("username",username);
            req.getRequestDispatcher(URL_LOGINPRODUCTS).forward(req,resp);
        }
    }
}

