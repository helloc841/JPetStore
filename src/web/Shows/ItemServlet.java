package web.Shows;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import pojo.Item;
import service.CategoryService;
import service.CategoryService;

public class ItemServlet extends HttpServlet {
    private CategoryService categoryService = new CategoryService();
    private static final String URL_LOGINITEM = "/WEB-INF/JSP/item/loginitem.jsp";
    private static final String URL_ITEM = "/WEB-INF/JSP/item/item.jsp";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String Category = req.getParameter("Category");
        req.setAttribute("Category",Category);
        String username = req.getParameter("username");
        String productid = req.getParameter("productid");
        ArrayList<Item> items = categoryService.getItems(productid);
        String itemids = "";
        String itemnames = "";
        String prices = "";
        for (Item item : items){
            itemids += item.getItemid() +"/";
            itemnames += item.getItemname() + "/";
            prices += item.getPrice() + "/";
        }
        req.setAttribute("itemids",itemids);
        req.setAttribute("itemnames",itemnames);
        req.setAttribute("prices",prices);
        req.setAttribute("itemkind",items.get(0).getItemkind());
        req.setAttribute("productid",productid);
        if (username ==null){
            req.getRequestDispatcher(URL_ITEM).forward(req,resp);
        }
        else req.getRequestDispatcher(URL_LOGINITEM).forward(req,resp);
    }
}
