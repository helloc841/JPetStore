package persistence;

import pojo.CartItem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CartImpl implements CartDAO{
    private static final String CREATEBYUSERNAME = "CREATE TABLE %s (\n" +
            "    id INT PRIMARY KEY AUTO_INCREMENT,\n" +
            "    itemid CHAR(10),\n" +
            "    itemname INT,\n" +
            "    quantity CHAR(10),\n" +
            "    instock CHAR(10),\n" +
            "    total CHAR(10)\n" +
            ");";
    private static final String ISEXISTTABLE = "SELECT table_name\n" +
            "FROM information_schema.tables\n" +
            "WHERE table_schema = 'jpetstore'\n" +
            "AND table_name = ?;";
    private static final String INSERTCART = "INSERT INTO %s (itemid,itemname,quantity,instock,total) VALUES(?,?,?,?,?)";
    private static final String SELECTITEM = "SELECT * FROM %s";
    private static final String SELECTITEMID = "SELECT * FROM %s WHERE itemid=?";
    private static final String UPDATEQUANTITY = "UPDATE %s SET quantity = quantity + 1 WHERE itemid=?";
    @Override
    public void createCart(String username) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = DBUtil.getConnection();
            String sql = String.format(CREATEBYUSERNAME, username);
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            DBUtil.closeConnection(connection);
            DBUtil.closePreparedStatement(preparedStatement);
        }
    }

    @Override
    public boolean isHasCart(String username) {
        Connection connection =null;
        PreparedStatement preparedStatement=null;
        ResultSet resultSet = null;
        try {
            connection = DBUtil.getConnection();
            preparedStatement = connection.prepareStatement(ISEXISTTABLE);
            preparedStatement.setString(1,username);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                return true;
            }
            else
                return false;
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
    public void addCartItemIntoCart(CartItem cartItem , String username) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            if (!isHasCart(username)){
                createCart(username);
            }
            connection = DBUtil.getConnection();
            if (isExistItem(username , cartItem.getItemId())){
                String sql = String.format(UPDATEQUANTITY,username);
                preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1, cartItem.getItemId());
                preparedStatement.execute();
            }
            else {
                String sql = String.format(INSERTCART,username);
                preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1,cartItem.getItemId());
                preparedStatement.setString(2,cartItem.getItemName());
                preparedStatement.setInt(3,cartItem.getQuantity());
                preparedStatement.setString(4,cartItem.getInStock());
                preparedStatement.setString(5,cartItem.getTotal());
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
    public List<CartItem> getLstItem(String username) {
        Connection connection = DBUtil.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<CartItem> cartItems = new ArrayList<>();
        String sql = String.format(SELECTITEM,username);
        try {
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                CartItem cartitem = new CartItem();
                cartitem.setItemId(resultSet.getString(2));
                cartitem.setItemName(resultSet.getString(3));
                cartitem.setQuantity(resultSet.getInt(4));
                cartitem.setInStock(resultSet.getString(5));
                cartitem.setTotal(resultSet.getString(6));
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
    @Override
    public boolean isExistItem(String username, String itemId) {
        Connection connection = DBUtil.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        String sql = String.format(SELECTITEMID,username);
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,itemId);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                return true;
            }
            else
                return false;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        finally {
            DBUtil.closeConnection(connection);
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeResultSet(resultSet);
        }
    }
}
