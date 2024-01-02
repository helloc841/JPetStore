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
    //判断用户名是否重复
    public boolean isUsernameRepeat(String username);
    //获取用户的账号信息
    public User getUserAccount(String username);
    //修改用户账号信息
    public boolean setUserAccount(User user);
    //修改用户密码
    public boolean setUserPassword(String username , String password);
    public boolean isAccountExist(String username);
}
