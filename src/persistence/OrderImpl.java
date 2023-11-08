package persistence;

import pojo.CartItem;
import pojo.Order;

import java.nio.file.DirectoryNotEmptyException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderImpl implements OrderDAO {
    private static final String INSERT_ORDER = "INSERT INTO userorder (username, orderDate, shipAddress1, shipAddress2, shipCity, shipState, shipZip, " +
            "shipCountry, billAddress1, billAddress2, billCity, billState, billZip, billCountry, " +
            "courier, totalPrice, billToFirstName, billToLastName, shipToFirstName, shipToLastName, " +
            "creditCard, expiryDate, cardType, status)\n" +
            "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
    private static final String SELECT_BYUSERNAME = "SELECT * FROM userorder WHERE username=?";
    private static final String INSERT_CARDITEM = "INSERT INTO ordercartitem (orderId,itemid,productid,itemname,quantity,instock,price,total,Category) VALUES(?,?,?,?,?,?,?,?,?)";
    private static final String SELECTITEM = "SELECT * FROM ordercartitem WHERE orderId=?";
    private static final String SELECTCOUNT = "SELECT COUNT(*) FROM userorder";
    @Override
    public void setOrder(Order order) {
        Connection connection = DBUtil.getConnection();
        PreparedStatement preparedStatement = null;
        try {
                preparedStatement = connection.prepareStatement(INSERT_ORDER);
                preparedStatement.setString(1, order.getUsername());
                preparedStatement.setString(2, order.getOrderDate());
                preparedStatement.setString(3, order.getShipAddress1());
                preparedStatement.setString(4, order.getShipAddress2());
                preparedStatement.setString(5, order.getShipCity());
                preparedStatement.setString(6, order.getShipState());
                preparedStatement.setString(7, order.getShipZip());
                preparedStatement.setString(8, order.getShipCountry());
                preparedStatement.setString(9, order.getBillAddress1());
                preparedStatement.setString(10, order.getBillAddress2());
                preparedStatement.setString(11, order.getBillCity());
                preparedStatement.setString(12, order.getBillState());
                preparedStatement.setString(13, order.getBillZip());
                preparedStatement.setString(14, order.getBillCountry());
                preparedStatement.setString(15, order.getCourier());
                preparedStatement.setString(16, order.getTotalPrice());
                preparedStatement.setString(17, order.getBillToFirstName());
                preparedStatement.setString(18, order.getBillToLastName());
                preparedStatement.setString(19, order.getShipToFirstName());
                preparedStatement.setString(20, order.getShipToLastName());
                preparedStatement.setString(21, order.getCreditCard());
                preparedStatement.setString(22, order.getExpiryDate());
                preparedStatement.setString(23, order.getCardType());
                preparedStatement.setString(24, order.getStatus());
                preparedStatement.executeUpdate();
                int OrderId = 1000 + getCountOfUserOrder() - 1;
                setListCardItem(order.getItemList() , OrderId);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        finally {
            DBUtil.closeConnection(connection);
            DBUtil.closePreparedStatement(preparedStatement);
        }
    }

    @Override
    public List<Order> getOrderList(String username) {
        Connection connection = DBUtil.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            List<Order> orders = new ArrayList<>();
            preparedStatement = connection.prepareStatement(SELECT_BYUSERNAME);
            preparedStatement.setString(1,username);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Order order = new Order();
                order.setOrderId(resultSet.getInt("orderId"));
                order.setUsername(resultSet.getString("username"));
                order.setOrderDate(resultSet.getString("orderDate"));
                order.setShipAddress1(resultSet.getString("shipAddress1"));
                order.setShipAddress2(resultSet.getString("shipAddress2"));
                order.setShipCity(resultSet.getString("shipCity"));
                order.setShipState(resultSet.getString("shipState"));
                order.setShipZip(resultSet.getString("shipZip"));
                order.setShipCountry(resultSet.getString("shipCountry"));
                order.setBillAddress1(resultSet.getString("billAddress1"));
                order.setBillAddress2(resultSet.getString("billAddress2"));
                order.setBillCity(resultSet.getString("billCity"));
                order.setBillState(resultSet.getString("billState"));
                order.setBillZip(resultSet.getString("billZip"));
                order.setBillCountry(resultSet.getString("billCountry"));
                order.setCourier(resultSet.getString("courier"));
                order.setTotalPrice(resultSet.getString("totalPrice"));
                order.setBillToFirstName(resultSet.getString("billToFirstName"));
                order.setBillToLastName(resultSet.getString("billToLastName"));
                order.setShipToFirstName(resultSet.getString("shipToFirstName"));
                order.setShipToLastName(resultSet.getString("shipToLastName"));
                order.setCreditCard(resultSet.getString("creditCard"));
                order.setExpiryDate(resultSet.getString("expiryDate"));
                order.setCardType(resultSet.getString("cardType"));
                order.setStatus(resultSet.getString("status"));
                order.setItemList(getListCardItem(order.getOrderId()));
                orders.add(order);
            }

            return orders;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        finally {
            DBUtil.closeConnection(connection);
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeResultSet(resultSet);
        }
    }

    @Override
    public void setListCardItem(List<CartItem> cartItems , int orderId) {
        Connection connection = DBUtil.getConnection();
        PreparedStatement preparedStatement = null;
        try {
            for (CartItem cartItem : cartItems){
                preparedStatement = connection.prepareStatement(INSERT_CARDITEM);
                preparedStatement.setInt(1,orderId);
                preparedStatement.setString(2,cartItem.getItemId());
                preparedStatement.setString(3, cartItem.getProductid());
                preparedStatement.setString(4,cartItem.getItemName());
                preparedStatement.setInt(5,cartItem.getQuantity());
                preparedStatement.setString(6,cartItem.getInStock());
                preparedStatement.setString(7,cartItem.getPrice());
                preparedStatement.setString(8,cartItem.getTotal());
                preparedStatement.setString(9,cartItem.getCategory());
                preparedStatement.execute();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        finally {
            DBUtil.closeConnection(connection);
            DBUtil.closePreparedStatement(preparedStatement);
        }
    }

    @Override
    public List<CartItem> getListCardItem(int orderId) {
        Connection connection = DBUtil.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<CartItem> cartItems = new ArrayList<>();
        try {
            preparedStatement = connection.prepareStatement(SELECTITEM);
            preparedStatement.setInt(1,orderId);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                CartItem cartitem = new CartItem();
                cartitem.setItemId(resultSet.getString(3));
                cartitem.setProductid(resultSet.getString(4));
                cartitem.setItemName(resultSet.getString(5));
                cartitem.setQuantity(resultSet.getInt(6));
                cartitem.setInStock(resultSet.getString(7));
                cartitem.setPrice(resultSet.getString(8));
                cartitem.setTotal(resultSet.getString(9));
                cartitem.setCategory(resultSet.getString(10));
                cartitem.setTotalByPrice();
                cartItems.add(cartitem);
            }
            return cartItems;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        finally {
            DBUtil.closeConnection(connection);
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeResultSet(resultSet);
        }
    }
    public int getCountOfUserOrder(){
        Connection connection = DBUtil.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECTCOUNT);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.next();
            int rowCount = resultSet.getInt(1);
            DBUtil.closeConnection(connection);
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeResultSet(resultSet);
            return rowCount;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
