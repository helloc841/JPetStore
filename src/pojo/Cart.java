package pojo;
import java.io.Serializable;
import java.util.*;

public class Cart implements Serializable{
    private static final long serialVersionUID = 8329559983943337176L;
    private  List<CartItem> itemList = new ArrayList<>();
    private float total = 0;

    public int getNumber(){return itemList.size();}
    public float getTotal() {
        return total;
    }

    public void setTotal() {
        for (CartItem cartItem : itemList){
            float listTotal = Float.parseFloat(cartItem.getTotal().substring(1,cartItem.getTotal().length()));
            total += listTotal;
        }
    }

    public List<CartItem> getItemList() {
        return itemList;
    }

    public void setItemList(List<CartItem> itemList) {
        this.itemList = itemList;
    }
}
