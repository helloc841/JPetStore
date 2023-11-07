package persistence;
import pojo.*;

import java.util.List;

public interface CartDAO {
    //对于没有创建购物车的用户创建购物车
    public void createCart(String username);
    //判断用户是否创建购物车
    public boolean isHasCart(String username);
    //对于创建购物车的用户放入item
    public void addCartItemIntoCart(CartItem cartItem , String username);
    //获取已放入购物车的items
    public List<CartItem> getLstItem(String username);
    //查询是否加入了多次购物车
    public boolean isExistItem(String username , String itemId);
    public void deleteItem(String username , String itemid);
    public void updateItem(String username  , String itemid , int quantity);
}
