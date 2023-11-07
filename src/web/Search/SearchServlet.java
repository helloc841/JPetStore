package web.Search;

import pojo.CartItem;
import pojo.Item;
import service.SearchService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class SearchServlet extends HttpServlet {
    private static final String URL_SEARCH = "/WEB-INF/JSP/search/search.jsp";
    SearchService searchService = new SearchService();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String keyword = req.getParameter("keyword");
        List<Item> items = searchService.getItemByItemName(keyword);
        HttpSession session = req.getSession();
        String username = req.getParameter("username");
        System.out.println("items.length"+items.size());
        if (username != null)
            session.setAttribute("username",username);
        session.setAttribute("items",items);
        req.getRequestDispatcher(URL_SEARCH).forward(req,resp);
    }
}
