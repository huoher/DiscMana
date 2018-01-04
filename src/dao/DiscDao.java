package dao;

import entity.Disc;
import entity.Singer;
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

    public Disc getDiscById(int id) throws IOException {
        SqlFactory sqlFactory = new SqlFactory();
        SqlSession sqlSession = sqlFactory.getSession();
        Disc disc = new Disc();
        disc = sqlSession.selectOne("findDiscById",id);
        sqlFactory.commitAll();
        sqlFactory.closeAll();
        return disc;
    }

    public List<Disc> findBySinger(int id) throws IOException {
        SqlFactory sqlFactory = new SqlFactory();
        List<Disc> list = new ArrayList<>();
        Singer singer = new Singer();
        SqlSession sqlSession = sqlFactory.getSession();
        singer = sqlSession.selectOne("getSingerById",id);
        Disc disc = new Disc();
        disc.setSinger(singer.getName());
        list = sqlSession.selectList("findDiscBySinger",disc);
        return list;
    }

    public int doUpdateDisc(Disc disc) throws IOException {
        SqlFactory sqlFactory = new SqlFactory();
        SqlSession sqlSession = sqlFactory.getSession();
        int re = sqlSession.update("updateDisc",disc);
        sqlFactory.commitAll();
        sqlFactory.closeAll();
        return re;
    }
}
