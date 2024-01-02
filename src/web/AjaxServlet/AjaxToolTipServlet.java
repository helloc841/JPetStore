package web.AjaxServlet;

import com.alibaba.fastjson.JSON;
import pojo.Product;
import service.CategoryService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class AjaxToolTipServlet extends HttpServlet {
    CategoryService categoryService = new CategoryService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String Category = req.getParameter("Category");
        List<Product> products = categoryService.getProducts(Category);

        String result = JSON.toJSONString(products);
        resp.setContentType("text/json");
        PrintWriter out = resp.getWriter();
        out.println(result);
    }
}
