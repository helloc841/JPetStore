package service;

import persistence.OrderDAO;
import persistence.OrderImpl;
import pojo.Order;

import java.util.List;

public class OrderService {
    private OrderDAO orderDAO = new OrderImpl();
    public void setUserOrder(Order order){orderDAO.setOrder(order);}
    public List<Order> getOrders(String username){return orderDAO.getOrderList(username);}
}
