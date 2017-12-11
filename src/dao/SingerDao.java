package dao;

import entity.Singer;
import org.apache.ibatis.session.SqlSession;
import sqlfactory.SqlFactory;

import java.io.IOException;
import java.util.List;

public class SingerDao {
    public List getAllSinger() throws IOException {
        SqlFactory sqlFactory = new SqlFactory();
        SqlSession sqlSession = sqlFactory.getSession();
        List<Singer> list = sqlSession.selectList("etAllSinger");
        return list;
    }
}
