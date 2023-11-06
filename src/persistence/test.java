package persistence;

import pojo.*;

import java.util.ArrayList;
import java.util.List;

public class test {
    public static void main(String[] args) {
        CartDAO cartDAO = new CartImpl();
        CartItem cartItem = new CartItem("1","1",1,"1","1");
        cartDAO.addCartItemIntoCart(cartItem,"username");
        List<CartItem> cartItems = cartDAO.getLstItem("username");
        for (CartItem cartItem1 : cartItems){
            System.out.println(cartItem1.toString());
        }
    }
}
