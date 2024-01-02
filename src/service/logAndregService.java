package service;
import persistence.*;
import pojo.User;

public class logAndregService {
    UserDAO userDAO;
    public logAndregService(){
        this.userDAO = new UserDAOImpl();
    }
    public boolean userLogin(String username , String password){
        if (userDAO.IsLogin(username,password)){
            return true;
        }
        else
            return false;
    }
    public String userRegister(User user){
        String msg = getTip(user);
        if (msg.equals("")){
            userDAO.Register(user);
            return "success";
        }
        else
            return msg;
    }
    public boolean isAccountExist(String username){ return userDAO.isAccountExist(username);}
    private String getTip(User user){
        String msg ="";
        if (userDAO.isUsernameRepeat(user.getUsername())){
            msg += "Username is repeat.!";
        }
        if (user.getUsername().equals("")){
            msg += "Username is required.!";
        }
        if (user.getPassword().equals("")){
            msg += "Password is required.!";
        }
        if (user.getRepeatPassword().equals("")){
            msg += "Repeat password is required.!";
        }
        if (!user.getRepeatPassword().equals(user.getPassword())){
            msg += "Repeat password is different from password.!";
        }
        if (user.getFirstname().equals("")){
            msg += "First name is required.!";
        }
        if (user.getLastname().equals("")){
            msg += "Last name is required.!";
        }
        if (user.getEmail().equals("")){
            msg += "Email address is required.!";
        }
        if (user.getPhone().equals("")){
            msg += "Phone is required.!";
        }
        if (user.getAddress1().equals("")){
            msg += "Address1 is required.!";
        }
        if (user.getAddress2().equals("")){
            msg += "Address2 is required.!";
        }
        if (user.getCity().equals("")){
            msg += "City is required.!";
        }
        if (user.getState().equals("")){
            msg += "State is required.!";
        }
        if (user.getZipcode().equals("")){
            msg += "Zip/Postal Code is required.!";
        }
        if (user.getCountry().equals("")){
            msg += "Country is required.!";
        }
        return msg;
    }
    public User getAccount(String username){
        User user;
        if (userDAO.isUsernameRepeat(username)){
            user = userDAO.getUserAccount(username);
            return user;
        }
        else
            return null;
    }
    public String setAccount(User user){
        String msg = "";
        if (!user.getPassword().equals("")){
            if (!user.getRepeatPassword().equals(user.getPassword())){
                msg += "Repeat password is different from password.!";
            }
        }
        if (user.getFirstname().equals("")){
            msg += "First name is required.!";
        }
        if (user.getLastname().equals("")){
            msg += "Last name is required.!";
        }
        if (user.getEmail().equals("")){
            msg += "Email address is required.!";
        }
        if (user.getPhone().equals("")){
            msg += "Phone is required.!";
        }
        if (user.getAddress1().equals("")){
            msg += "Address1 is required.!";
        }
        if (user.getAddress2().equals("")){
            msg += "Address2 is required.!";
        }
        if (user.getCity().equals("")){
            msg += "City is required.!";
        }
        if (user.getState().equals("")){
            msg += "State is required.!";
        }
        if (user.getZipcode().equals("")){
            msg += "Zip/Postal Code is required.!";
        }
        if (user.getCountry().equals("")){
            msg += "Country is required.!";
        }
        if (msg.equals("")){
            userDAO.setUserAccount(user);
            if (!user.getPassword().equals("")){
                setPassword(user.getUsername(),user.getPassword());
            }
            return "success";
        }
        else
            return msg;
    }
    private void setPassword(String username , String password){
        userDAO.setUserPassword(username,password);
    }
}
