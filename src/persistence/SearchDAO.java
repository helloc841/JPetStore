package persistence;
import pojo.Item;
import java.util.List;

public interface SearchDAO {
    public List<Item> searchName(String itemname);
    public List<Item> searchLikeName(String itemname);
}
