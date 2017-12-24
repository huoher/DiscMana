package entity;

public class Singer {
    private int id;
    private String name;

    public Singer() {
    }

    public Singer(String name) {
        this.name = name;
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

    @Override
    public String toString() {
        return "Singer[id=" + id +
                ", name=" + name +
                "]";
    }
}
