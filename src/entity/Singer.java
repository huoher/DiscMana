package entity;

public class Singer {
    private int id;
    private String name;
    private int discid;

    public Singer() {
        super();
    }

    public Singer(String name, int discid) {
        super();
        this.name = name;
        this.discid = discid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getDiscid() {
        return discid;
    }

    public void setDiscid(int discid) {
        this.discid = discid;
    }
}
