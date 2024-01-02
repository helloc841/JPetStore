package service;

import persistence.SearchDAO;
import persistence.SearchImpl;
import pojo.Item;

import java.util.List;

public class SearchService {
    SearchDAO searchDAO = new SearchImpl();
    public List<Item> getItemByItemName(String itemName){return searchDAO.searchName(itemName);}
    public List<Item> getItemLikeItemName(String itemName){return searchDAO.searchLikeName(itemName);}
}
