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
    private String productid;
    private String price;
    private String category;

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getProductid() {
        return productid;
    }

    public void setProductid(String productid) {
        this.productid = productid;
    }

    @Override
    public String toString() {
        return "CartItem{" +
                "itemId='" + itemId + '\'' +
                ", itemName='" + itemName + '\'' +
                ", quantity=" + quantity +
                ", inStock='" + inStock + '\'' +
                ", total='" + total + '\'' +
                ", productid='" + productid + '\'' +
                ", price='" + price + '\'' +
                ", Category='" + category + '\'' +
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

    public void setTotalByPrice() {
        float listTotal;
        String priceStr = price.substring(1,price.length());
        float priceInt = Float.parseFloat(priceStr);
        listTotal = priceInt * quantity;
        total = "$"+listTotal;
    }
    public void setTotal(String total){
        this.total = total;
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
