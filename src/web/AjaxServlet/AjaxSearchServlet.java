package web.AjaxServlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.alibaba.fastjson.JSON;
import persistence.SearchDAO;
import persistence.SearchImpl;
import pojo.Item;

public class AjaxSearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String keyword = req.getParameter("keyword");
        SearchDAO searchDAO = new SearchImpl();
        List<Item> items = searchDAO.searchLikeName(keyword);

        String result = JSON.toJSONString(items);
        resp.setContentType("text/json");
        PrintWriter out = resp.getWriter();
        out.println(result);
    }
}
