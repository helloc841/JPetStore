package persistence;
import pojo.User;

public interface UserDAO {
    //判断是否能够进行登录
    public boolean IsLogin(String username , String password);
    //注册用户
    public boolean Register(User user);
    //注销用户
    public boolean userLogout(String username);
    //获取用户密码
    public boolean getUserPassword(String username);
    //设置用户密码
    public boolean setUserPassword(String username , String password);
    //判断用户名是否重复
    public boolean isUsernameRepeat(String username);
}
