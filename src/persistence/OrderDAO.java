package persistence;

import pojo.CartItem;
import pojo.Order;

import java.util.List;

public interface OrderDAO {
    //存储order数据
    public void setOrder(Order order);
    //获取order数据
    public List<Order> getOrderList(String username);
    public void setListCardItem(List<CartItem> cartItems , int orderId);
    public List<CartItem> getListCardItem(int orderId);
}
