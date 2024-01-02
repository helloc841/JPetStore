package persistence;

import pojo.User;

import java.awt.image.DataBufferUShort;
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
    private static final String DELETE_USER = "DELETE FROM usermessage WHERE username=?";
    private static final String GET_USER_ACCOUNT = "SELECT * FROM usermessage WHERE username=?";
    private static final String IS_ACCOUNT_EXIST = "SELECT COUNT(*) FROM usermessage WHERE username=?";
    private static final String UPDATE_USER = "UPDATE usermessage SET firstname=?,lastname=?," +
                                        "email=?,phone=?,address1=?,address2=?,city=?,state=?," +
                                        "zipcode=?,country=?,language=?,lovecategory=? WHERE username=?";
    private static final String UPDATE_PASSWORD = "UPDATE usermessage SET password=? WHERE username=?";
    //判断是否可以进行登录
    @Override
    public boolean IsLogin(String username, String password) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            connection = DBUtil.getConnection();
             preparedStatement = connection.prepareStatement(FIND_USER);
            preparedStatement.setString(1,username);
            preparedStatement.setString(2,password);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next())
                return true;
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
    //注销账户
    @Override
    public boolean userLogout(String username) {
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_USER);
            preparedStatement.setString(1,username);
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

    @Override
    public User getUserAccount(String username) {
        try {
            User user = new User();
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(GET_USER_ACCOUNT);
            preparedStatement.setString(1,username);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                user.setUsername(resultSet.getString(2));
                user.setPassword(resultSet.getString(3));
                user.setFirstname(resultSet.getString(4));
                user.setLastname(resultSet.getString(5));
                user.setEmail(resultSet.getString(6));
                user.setPhone(resultSet.getString(7));
                user.setAddress1(resultSet.getString(8));
                user.setAddress2(resultSet.getString(9));
                user.setCity(resultSet.getString(10));
                user.setState(resultSet.getString(11));
                user.setZipcode(resultSet.getString(12));
                user.setCountry(resultSet.getString(13));
                user.setLanguage(resultSet.getString(14));
                user.setLovecategory(resultSet.getString(15));
            }
            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeConnection(connection);
            return user;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public boolean setUserAccount(User user) {
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_USER);
            preparedStatement.setString(1,user.getFirstname());
            preparedStatement.setString(2,user.getLastname());
            preparedStatement.setString(3,user.getEmail());
            preparedStatement.setString(4,user.getPhone());
            preparedStatement.setString(5,user.getAddress1());
            preparedStatement.setString(6,user.getAddress2());
            preparedStatement.setString(7,user.getCity());
            preparedStatement.setString(8,user.getState());
            preparedStatement.setString(9,user.getZipcode());
            preparedStatement.setString(10,user.getCountry());
            preparedStatement.setString(11,user.getLanguage());
            preparedStatement.setString(12,user.getLovecategory());
            preparedStatement.setString(13,user.getUsername());
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
    public boolean setUserPassword(String username, String password) {
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_PASSWORD);
            preparedStatement.setString(1,password);
            preparedStatement.setString(2,username);
            int rows = preparedStatement.executeUpdate();
            DBUtil.closeConnection(connection);
            DBUtil.closePreparedStatement(preparedStatement);
            if (rows >= 1){
                return true;
            }
            else
                return false;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean isAccountExist(String username) {
        Connection connection = DBUtil.getConnection();
        PreparedStatement preparedStatement;
        ResultSet resultSet;
        try {
            preparedStatement = connection.prepareStatement(IS_ACCOUNT_EXIST);
            preparedStatement.setString(1,username);
            resultSet = preparedStatement.executeQuery();

// 处理结果集
            if (resultSet.next()) {
                int count = resultSet.getInt(1);  // 获取查询结果中的计数值
                if (count > 0) {
                    return true;
                } else {
                    return false;
                }
            }
            DBUtil.closeConnection(connection);
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeResultSet(resultSet);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }
}
