package persistence;

import pojo.*;

import java.util.ArrayList;
import java.util.List;

public class test {
    public static void main(String[] args) {
        UserDAO userDAO = new UserDAOImpl();
        System.out.println(userDAO.isAccountExist("1111"));
    }
}
