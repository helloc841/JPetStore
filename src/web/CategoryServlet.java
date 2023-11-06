package web;

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
    private static final String URL_LOGINPRODUCTS = "/loginproducts.jsp";
    private static final String URL_PRODUCTS = "/products.jsp";
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String Category = req.getParameter("Category");
        List<Product> products = categoryService.getProducts(Category);
    }
}

