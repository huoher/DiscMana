package entity;

public class Order {
    private int id;
    private int customerid;
    private int discid;

    public Order() {
    }


    public Order(int customerid, int discid) {
        this.customerid = customerid;
        this.discid = discid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCustomerid() {
        return customerid;
    }

    public void setCustomerid(int customerid) {
        this.customerid = customerid;
    }

    public int getDiscid() {
        return discid;
    }

    public void setDiscid(int discid) {
        this.discid = discid;
    }
}
