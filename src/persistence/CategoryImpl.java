package persistence;

import pojo.Item;
import pojo.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CategoryImpl implements CategoryDAO{
    private static final String SELECT_PRODUCT = "SELECT * FROM product WHERE category=?";
    private static final String SELECT_ITEM = "SELECT * FROM item WHERE productid=?";
    private static final String SELECT_ITEMBYID = "SELECT * FROM item WHERE itemid=?";
    @Override
    public ArrayList<Product> getProduct(String Category) {
        try {
            ArrayList<Product> products = new ArrayList<>();
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRODUCT);
            preparedStatement.setString(1,Category);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                Product product = new Product();
                product.setCategory(Category);
                product.setProductid(resultSet.getString(2));
                product.setName(resultSet.getString(4));
                products.add(product);
            }
            DBUtil.closeConnection(connection);
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeResultSet(resultSet);
            return products;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public ArrayList<Item> getItem(String productid) {
        try {
            ArrayList<Item> items = new ArrayList<>();
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ITEM);
            preparedStatement.setString(1,productid);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                Item item = new Item();
                item.setProductid(productid);
                item.setItemid(resultSet.getString(3));
                item.setDescription(resultSet.getString(4));
                item.setItemname(resultSet.getString(5));
                item.setPrice(resultSet.getString(6));
                item.setItemkind(resultSet.getString(7));
                item.setImage(resultSet.getString(8));
                System.out.println(item.toString());
                items.add(item);
            }
            DBUtil.closeConnection(connection);
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeResultSet(resultSet);
            return items;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public ArrayList<Item> getItemById(String itemId) {
        try {
            ArrayList<Item> items = new ArrayList<>();
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ITEMBYID);
            preparedStatement.setString(1,itemId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                Item item = new Item();
                item.setProductid(itemId);
                item.setItemid(resultSet.getString(3));
                item.setDescription(resultSet.getString(4));
                item.setItemname(resultSet.getString(5));
                item.setPrice(resultSet.getString(6));
                item.setItemkind(resultSet.getString(7));
                item.setImage(resultSet.getString(8));
                System.out.println(item.toString());
                items.add(item);
            }
            DBUtil.closeConnection(connection);
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeResultSet(resultSet);
            return items;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
