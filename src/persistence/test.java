package persistence;

public class test {
    public static void main(String[] args) {
        UserDAO userDAO = new UserDAOImpl();
        if (userDAO.IsLogin("111","111")){
            System.out.println("登陆成功");
        }
        else
            System.out.println("222");

    }
}
