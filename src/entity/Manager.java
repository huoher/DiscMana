package entity;

public class Manager {
    private int id;
    private String mananame;
    private String manapasswd;

    public Manager() {
    }

    public Manager(String mananame, String manapasswd) {
        this.mananame = mananame;
        this.manapasswd = manapasswd;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMananame() {
        return mananame;
    }

    public void setMananame(String mananame) {
        this.mananame = mananame;
    }

    public String getManapasswd() {
        return manapasswd;
    }

    public void setManapasswd(String manapasswd) {
        this.manapasswd = manapasswd;
    }

    @Override
    public String toString() {
        return "Manager[" +
                "id=" + id +
                ", mananame=" + mananame +
                ", manapasswd=" + manapasswd +
                ']';
    }
}
