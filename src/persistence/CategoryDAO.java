package persistence;
import pojo.*;

import java.util.ArrayList;

public interface CategoryDAO {
    //找到fish dog等页面的动物分类
    public ArrayList<Product> getProduct(String Category);
    public ArrayList<Item> getItem(String productid);
    public ArrayList<Item> getItemById(String itemId);
}
