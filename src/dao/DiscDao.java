package dao;

import org.apache.ibatis.session.SqlSession;
import sqlfactory.SqlFactory;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class DiscDao {
    public List<entity.Disc> getAllDisc() throws IOException {
        SqlFactory sqlFactory = new SqlFactory();
        SqlSession sqlSession = sqlFactory.getSession();
        List<entity.Disc> list = new ArrayList<>();
        list = sqlSession.selectList("getAllDisc");

        sqlFactory.commitAll();
        sqlFactory.closeAll();
        return list;
    }
}
