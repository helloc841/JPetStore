package persistence;

import com.mysql.cj.log.Log;
import pojo.Logmsg;

public interface LogDAO {
    public void addLog(Logmsg logmsg);
}
