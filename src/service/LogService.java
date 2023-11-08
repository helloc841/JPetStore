package service;

import persistence.LogDAO;
import persistence.LogImpl;
import pojo.Logmsg;

public class LogService {
    LogDAO logDAO = new LogImpl();
    public void addLogmsg(Logmsg logmsg){logDAO.addLog(logmsg);}
}
