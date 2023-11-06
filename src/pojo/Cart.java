package pojo;
import java.io.Serializable;
import java.util.*;

public class Cart implements Serializable{
    private static final long serialVersionUID = 8329559983943337176L;
    private  List<CartItem> itemList = new ArrayList<>();
    private int total = 0;
    private int number = 0;

    public int getTotal() {
        return total;
    }

    public void setTotal() {
        for (CartItem cartItem : itemList){
            int listTotal = Integer.parseInt(cartItem.getTotal().substring(1,cartItem.getTotal().length()));
            total += listTotal;
        }
    }

    public List<CartItem> getItemList() {
        return itemList;
    }

    public void setItemList(List<CartItem> itemList) {
        this.itemList = itemList;
        number = itemList.size();
    }
}
