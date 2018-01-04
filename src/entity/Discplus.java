package entity;

public class Discplus {
    private int id;
    private String name;
    private String singer;
    private String company;
    private String issuedate;
    private int num;
    private String datetime;

    public Discplus() {

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

    public String getSinger() {
        return singer;
    }

    public void setSinger(String singer) {
        this.singer = singer;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getIssuedate() {
        return issuedate;
    }

    public void setIssuedate(String issuedate) {
        this.issuedate = issuedate;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getDatetime() {
        return datetime;
    }

    public void setDatetime(String datetime) {
        this.datetime = datetime;
    }

    @Override
    public String toString() {
        return "DiscDao [id=" + id +
                ", name=" + name +
                ", singer=" + singer +
                ", company=" + company +
                ", issuedate=" + issuedate +
                ", num=" + num +
                ",datetime=" + datetime +
                "]";
    }

    public Discplus(int id, String name, String singer, String company, String issuedate, int num) {
        this.id = id;
        this.name = name;
        this.singer = singer;
        this.company = company;
        this.issuedate = issuedate;
        this.num = num;
    }

    public Discplus(String name, String singer, String company, String issuedate, int num) {
        super();
        this.name = name;
        this.singer = singer;
        this.company = company;
        this.issuedate = issuedate;
        this.num = num;
    }
}