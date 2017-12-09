package sqlfactory;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class SqlFactory {
    private final String resource = "mybaits-config.xml";
    private SqlSession sqlSession;

    public SqlSession getSession() throws IOException {
           InputStream inputStream = Resources.getResourceAsStream(resource);
           SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
           sqlSession = sqlSessionFactory.openSession();
         return sqlSession;
    }

    public void closeAll(){
        sqlSession.close();
    }

    public void commitAll(){
        sqlSession.commit();
    }
}
