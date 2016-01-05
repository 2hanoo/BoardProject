package mybatisBoard.bean;

import java.io.Reader;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisManager {
public static SqlSessionFactory sqlSession;
static{
String resource = "mybatis/config/Configuration.xml";
	Reader reader = null;
try{
reader = Resources.getResourceAsReader(resource);
	sqlSession = new SqlSessionFactoryBuilder().build(reader);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(reader!=null)reader.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
	public static SqlSessionFactory getSqlSession() {
		return sqlSession;
	}
}
