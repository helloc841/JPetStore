package persistence;

import com.mysql.cj.log.Log;
import pojo.Logmsg;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LogImpl implements LogDAO{
    private static final String INSERT_LOGMSG = "INSERT INTO logrecord (username,itemid,browsenumber,description) " +
            "VALUES(?,?,?,?)";
    private static final String UPDATE_BROWSENUMBER = "UPDATE logrecord SET browsenumber=browsenumber+1 WHERE username=? AND itemid=? AND description=?;";
    @Override
    public void addLog(Logmsg logmsg) {
        if (!isRepeatBrowseItem(logmsg)){
            Connection connection = DBUtil.getConnection();
            try {
                PreparedStatement preparedStatement = connection.prepareStatement(INSERT_LOGMSG);
                preparedStatement.setString(1,logmsg.getUsername());
                preparedStatement.setString(2, logmsg.getItemid());
                preparedStatement.setInt(3,1);
                preparedStatement.setString(4, logmsg.getDescription());
                preparedStatement.execute();
                DBUtil.closeConnection(connection);
                DBUtil.closePreparedStatement(preparedStatement);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }
    public boolean isRepeatBrowseItem(Logmsg logmsg){
        Connection connection = DBUtil.getConnection();
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = connection.prepareStatement(UPDATE_BROWSENUMBER);
            preparedStatement.setString(1,logmsg.getUsername());
            preparedStatement.setString(2,logmsg.getItemid());
            preparedStatement.setString(3, logmsg.getDescription());
            int row = preparedStatement.executeUpdate();
            if (row == 1)
                return true;
            else
                return false;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        finally {
            DBUtil.closeConnection(connection);
            DBUtil.closePreparedStatement(preparedStatement);
        }
    }
}
