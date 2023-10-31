package persistence;

import pojo.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAOImpl implements UserDAO{
    private static final String FIND_USER = "SELECT * FROM usermessage WHERE username=? AND password=?";
    private static final String FIND_USER_REPEAT = "SELECT * FROM usermessage WHERE username=?";
    private static final String INSERT_USER = "INSERT INTO usermessage (username,password,firstname,lastname," +
                                        "email,phone,address1,address2,city,state," +
                                        "zipcode,country,language,lovecategory) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    //判断是否可以进行登录
    @Override
    public boolean IsLogin(String username, String password) {
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_USER);
            preparedStatement.setString(1,username);
            preparedStatement.setString(2,password);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                DBUtil.closeConnection(connection);
                DBUtil.closePreparedStatement(preparedStatement);
                DBUtil.closeResultSet(resultSet);
                return true;
            }
            DBUtil.closeConnection(connection);
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeResultSet(resultSet);
            return false;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    //注册用户
    @Override
    public boolean Register(User user) {
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER);
            preparedStatement.setString(1,user.getUsername());
            preparedStatement.setString(2,user.getPassword());
            preparedStatement.setString(3,user.getFirstname());
            preparedStatement.setString(4,user.getLastname());
            preparedStatement.setString(5,user.getEmail());
            preparedStatement.setString(6,user.getPhone());
            preparedStatement.setString(7,user.getAddress1());
            preparedStatement.setString(8,user.getAddress2());
            preparedStatement.setString(9,user.getCity());
            preparedStatement.setString(10,user.getState());
            preparedStatement.setString(11,user.getZipcode());
            preparedStatement.setString(12,user.getCountry());
            preparedStatement.setString(13,user.getLanguage());
            preparedStatement.setString(14,user.getLovecategory());
            int rows = preparedStatement.executeUpdate();
            DBUtil.closeConnection(connection);
            DBUtil.closePreparedStatement(preparedStatement);
            if (rows == 1){
                return true;
            }
            else
                return false;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean userLogout(String username) {
        return false;
    }

    @Override
    public boolean getUserPassword(String username) {
        return false;
    }

    @Override
    public boolean setUserPassword(String username, String password) {
        return false;
    }

    @Override
    public boolean isUsernameRepeat(String username) {
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_USER_REPEAT);
            preparedStatement.setString(1,username);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                DBUtil.closeConnection(connection);
                DBUtil.closePreparedStatement(preparedStatement);
                DBUtil.closeResultSet(resultSet);
                return true;
            }
            DBUtil.closeConnection(connection);
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeResultSet(resultSet);
            return false;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
