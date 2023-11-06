package service;
import persistence.*;
import pojo.*;
import java.util.ArrayList;

public class CategoryService {
    private CategoryDAO categoryDAO = new CategoryImpl();
    //获取products
    public ArrayList<Product> getProducts(String Category){
        return categoryDAO.getProduct(Category);
    }
    public ArrayList<Item> getItems(String productid){
        return categoryDAO.getItem(productid);
    }
    public ArrayList<Item> getItemsById(String itemId){return categoryDAO.getItemById(itemId);}
}
