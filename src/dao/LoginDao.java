package dao;

import entity.Customer;
import entity.Manager;
import org.apache.ibatis.session.SqlSession;
import sqlfactory.SqlFactory;

import java.io.IOException;

public class LoginDao {
    public Customer LoginShell(String username,String passwd) throws IOException {
        Customer customer = new Customer(username,passwd);
        SqlFactory sqlFactory = new SqlFactory();
        SqlSession sqlSession = sqlFactory.getSession();
        Customer customer1 = new Customer();
        customer1 = sqlSession.selectOne("Login",customer);

        sqlFactory.commitAll();
        sqlFactory.closeAll();
        return customer1;
    }

    public boolean ManaLogin(String username,String passwd) throws IOException {
        Manager manager = new Manager();
        manager.setMananame(username);
        manager.setManapasswd(passwd);
        SqlFactory sqlFactory = new SqlFactory();
        SqlSession sqlSession = sqlFactory.getSession();
        Manager manager1 = sqlSession.selectOne("ManagerLogin",manager);
        System.out.println("manager1 : " + manager1);
        System.out.println("manager : " + manager);

        String password = manager1.getManapasswd();
        if (manager.getManapasswd().equals(password)){
            return true;
        }else {
            return false;
        }
    }

}
