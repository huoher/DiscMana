package dao;

import entity.Disc;
import entity.Order;
import org.apache.ibatis.session.SqlSession;
import sqlfactory.SqlFactory;

import java.io.IOException;

public class BuyDiscDao {
    public int BuyDiscOp(int customerid,int discid) throws IOException {
        Order order = new Order(customerid,discid);
        SqlFactory sqlFactory = new SqlFactory();
        SqlSession sqlSession = sqlFactory.getSession();
        int re = sqlSession.insert("addOrder",order);
        Disc disc = sqlSession.selectOne("findDiscById",discid);
        sqlSession.update("buyDisc",disc);
        sqlFactory.commitAll();
        sqlFactory.closeAll();
        return re;
    }
}
