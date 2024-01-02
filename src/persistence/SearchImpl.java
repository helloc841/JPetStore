package persistence;

import pojo.Item;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SearchImpl implements SearchDAO{
    private static final String SELECTITEM = "SELECT * FROM item WHERE LOWER(itemname) = LOWER(?)";
    private static final String SELECTLIKEITEM = "SELECT * FROM item WHERE LOWER(itemname) LIKE LOWER(?)";

    @Override
    public List<Item> searchName(String itemname) {
        List<Item> items = new ArrayList<>();
        Connection connection = DBUtil.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            preparedStatement = connection.prepareStatement(SELECTITEM);
            preparedStatement.setString(1,itemname);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Item item = new Item();
                item.setProductid(resultSet.getString(2));
                item.setItemid(resultSet.getString(3));
                item.setDescription(resultSet.getString(4));
                item.setItemname(resultSet.getString(5));
                item.setPrice(resultSet.getString(6));
                item.setItemkind(resultSet.getString(7));
                item.setImage(resultSet.getString(8));
                items.add(item);
            }
            return items;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        finally {
                DBUtil.closeConnection(connection);
                DBUtil.closeResultSet(resultSet);
                DBUtil.closePreparedStatement(preparedStatement);
            }
    }

    @Override
    public List<Item> searchLikeName(String itemname) {
        List<Item> items = new ArrayList<>();
        Connection connection = DBUtil.getConnection();
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        // 在搜索字符串的两侧添加百分号
        String searchStringWithWildcards = "%" + itemname + "%";
        try {
            preparedStatement = connection.prepareStatement(SELECTLIKEITEM);
            preparedStatement.setString(1,searchStringWithWildcards);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Item item = new Item();
                item.setProductid(resultSet.getString(2));
                item.setItemid(resultSet.getString(3));
                item.setDescription(resultSet.getString(4));
                item.setItemname(resultSet.getString(5));
                item.setPrice(resultSet.getString(6));
                item.setItemkind(resultSet.getString(7));
                item.setImage(resultSet.getString(8));
                items.add(item);
            }
            return items;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        finally {
            DBUtil.closeConnection(connection);
            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatement(preparedStatement);
        }
    }
}
