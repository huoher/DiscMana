package dao;

import entity.Customer;
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

}
