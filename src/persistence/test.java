package persistence;

import pojo.*;

import java.util.ArrayList;
import java.util.List;

public class test {
    public static void main(String[] args) {
        LogDAO logDAO = new LogImpl();
        Logmsg logmsg = new Logmsg("123","123","123");
        logDAO.addLog(logmsg);
    }
}
