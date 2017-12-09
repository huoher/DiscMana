package entity;

public class Customer {
    private int id;
    private String customername;
    private String passwd;

    public Customer() {
        super();
    }

    public Customer(String customername, String passwd) {
        super();
        this.customername = customername;
        this.passwd = passwd;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCustomername() {
        return customername;
    }

    public void setCustomername(String customername) {
        this.customername = customername;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }
}
