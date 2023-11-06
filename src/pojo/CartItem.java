package pojo;
import java.io.Serializable;
import java.math.BigDecimal;

public class CartItem implements Serializable{
    private static final long serialVersionUID = 6620528781626504362L;

    private String itemId;
    private String itemName;
    private int quantity;
    private String inStock;
    private String total;

    @Override
    public String toString() {
        return "CartItem{" +
                "itemId='" + itemId + '\'' +
                ", itemName='" + itemName + '\'' +
                ", quantity=" + quantity +
                ", inStock='" + inStock + '\'' +
                ", total='" + total + '\'' +
                '}';
    }

    public CartItem(String itemId, String itemName, int quantity, String inStock, String total) {
        this.itemId = itemId;
        this.itemName = itemName;
        this.quantity = quantity;
        this.inStock = inStock;
        this.total = total;
    }
    public CartItem(){}

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getInStock() {
        return inStock;
    }

    public void setInStock(String inStock) {
        this.inStock = inStock;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String price) {
        int listTotal = 0;
        String priceStr = price.substring(1,price.length());
        int priceInt = Integer.parseInt(priceStr);
        listTotal = priceInt * quantity;
        total = "$"+listTotal;
    }

    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }
}
