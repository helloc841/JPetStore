package service;
import persistence.*;
import pojo.CartItem;

import java.util.List;

public class CartService {
    private CartDAO cartDAO = new CartImpl();
    //把item加入数据库
    public void addCartItem(String username , CartItem cartItem){
        cartDAO.addCartItemIntoCart(cartItem,username);
    }
    //获取数据库中的listCartItem
    public List<CartItem> getListCardItem(String username){
        return cartDAO.getLstItem(username);
    }
}
