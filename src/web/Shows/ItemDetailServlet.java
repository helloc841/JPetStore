package web.Shows;

import pojo.Item;
import service.CategoryService;
import web.Filter.BrowseItemFilter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class ItemDetailServlet extends HttpServlet {
    private CategoryService categoryService = new CategoryService();
    private static final String URL_ITEMDETAIL = "/WEB-INF/JSP/detail/itemdetail.jsp";
    private static final String URL_LOGINDDETAIL = "/WEB-INF/JSP/detail/logindetail.jsp";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String itemid = req.getParameter("itemid");
        String Category = req.getParameter("Category");
        String username = req.getParameter("username");
        if (username != null){
            req.setAttribute("username",username);
        }
        System.out.println(itemid);
        System.out.println(Category);
        ArrayList<Item> items = categoryService.getItemsById(itemid);
        System.out.println(items.get(0).toString());
        String description = items.get(0).getDescription();
        String itemname = items.get(0).getItemname();
        String price = items.get(0).getPrice();
        String image = items.get(0).getImage();
        String itemkind = items.get(0).getItemkind();
        String productid = items.get(0).getProductid();
        System.out.println(items.get(0).toString());

        req.setAttribute("itemid",itemid);
        req.setAttribute("Category",Category);
        req.setAttribute("description",description);
        req.setAttribute("itemname",itemname);
        req.setAttribute("price",price);
        req.setAttribute("image",image);
        req.setAttribute("itemkind",itemkind);
        req.setAttribute("productid",productid);
        if (username == null)
        req.getRequestDispatcher(URL_ITEMDETAIL).forward(req,resp);
        else{
            BrowseItemFilter browseItemFilter = new BrowseItemFilter();
            browseItemFilter.doFilter(req,resp,null);
            req.getRequestDispatcher(URL_LOGINDDETAIL).forward(req,resp);
        }
    }
}
