package beans;


import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class BoardDao {
	
	SqlSessionFactory factory;
	
	public BoardDao() throws IOException {
		SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
		InputStream is= Resources.getResourceAsStream("mybatis-config.xml");
		factory = builder.build(is);
	}
	
	public List<Map> getfirst(String word){
		SqlSession sql = factory.openSession();
		try {
			List<Map> p= sql.selectList("account.getfirstResult",word+"%");
			return p;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
		
	}
	
}
