package dao;

import entity.Customer;
import org.apache.ibatis.session.SqlSession;
import sqlfactory.SqlFactory;

import java.io.IOException;

public class RegisterDao {
    public int Register(String username,String passwd) throws IOException {
            SqlFactory sqlFactory = new SqlFactory();
            SqlSession sqlSession = sqlFactory.getSession();
            Customer customer1 = sqlSession.selectOne("findCustomerByname",username);
            if (customer1 != null){

                sqlFactory.commitAll();
                sqlFactory.closeAll();
                return 0;
            }else {
                Customer customer = new Customer(username,passwd);
                int ne = sqlSession.insert("Register",customer);
                sqlFactory.commitAll();
                sqlFactory.closeAll();
                return ne;
            }

    }
}
