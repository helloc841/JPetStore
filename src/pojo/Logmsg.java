package pojo;

public class Logmsg {
    String username;
    String itemid;
    String description;

    public Logmsg(String username, String itemid, String description) {
        this.username = username;
        this.itemid = itemid;
        this.description = description;
    }
    public Logmsg(){}

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getItemid() {
        return itemid;
    }

    public void setItemid(String itemid) {
        this.itemid = itemid;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
