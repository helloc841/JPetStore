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
            "    itemid CHAR(40),\n" +
            "    productid CHAR(40),\n" +
            "    itemname CHAR(40),\n" +
            "    quantity INT,\n" +
            "    instock CHAR(40),\n" +
            "    price CHAR(40),\n" +
            "    total CHAR(40),\n" +
            "    Category CHAR(40)\n" +
            ");";
    private static final String ISEXISTTABLE = "SELECT table_name\n" +
            "FROM information_schema.tables\n" +
            "WHERE table_schema = 'jpetstore'\n" +
            "AND table_name = ?;";
    private static final String INSERTCART = "INSERT INTO %s (itemid,productid,itemname,quantity,instock,price,total,Category) VALUES(?,?,?,?,?,?,?,?)";
    private static final String SELECTITEM = "SELECT * FROM %s";
    private static final String SELECTITEMID = "SELECT * FROM %s WHERE itemid=?";
    private static final String DELETEITEMID = "DELETE FROM %s WHERE itemid=?";
    private static final String UPDATEQUANTITY = "UPDATE %s SET quantity=? WHERE itemid=?";
    private static final String DELETEALL = "DELETE FROM %s";
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
        Connection connection = DBUtil.getConnection();
        PreparedStatement preparedStatement = null;
        try {
            if (!isHasCart(username)){
                createCart(username);
            }
            if (!isExistItem(username , cartItem.getItemId())){
                String sql = String.format(INSERTCART,username);
                preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1,cartItem.getItemId());
                preparedStatement.setString(2, cartItem.getProductid());
                preparedStatement.setString(3,cartItem.getItemName());
                preparedStatement.setInt(4,cartItem.getQuantity());
                preparedStatement.setString(5,cartItem.getInStock());
                preparedStatement.setString(6,cartItem.getPrice());
                preparedStatement.setString(7,cartItem.getTotal());
                preparedStatement.setString(8,cartItem.getCategory());
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
                cartitem.setProductid(resultSet.getString(3));
                cartitem.setItemName(resultSet.getString(4));
                cartitem.setQuantity(resultSet.getInt(5));
                cartitem.setInStock(resultSet.getString(6));
                cartitem.setPrice(resultSet.getString(7));
                cartitem.setTotal(resultSet.getString(8));
                cartitem.setCategory(resultSet.getString(9));
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

    @Override
    public void deleteItem(String username, String itemid) {
        Connection connection = DBUtil.getConnection();
        String sql = String.format(DELETEITEMID,username);
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,itemid);
            preparedStatement.execute();
            DBUtil.closeConnection(connection);
            DBUtil.closePreparedStatement(preparedStatement);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void updateItem(String username, String itemid, int quantity) {
        Connection connection = DBUtil.getConnection();
        PreparedStatement preparedStatement= null;
        String sql = String.format(UPDATEQUANTITY,username);
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,quantity);
            preparedStatement.setString(2,itemid);
            preparedStatement.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        finally {
            DBUtil.closeConnection(connection);
            DBUtil.closePreparedStatement(preparedStatement);
        }
    }

    @Override
    public void removeAll(String username) {
        Connection connection = DBUtil.getConnection();
        PreparedStatement preparedStatement = null;
        String sql = String.format(DELETEALL,username);
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.execute();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        finally {
            DBUtil.closeConnection(connection);
            DBUtil.closePreparedStatement(preparedStatement);
        }
    }
}
