package mybatisUser.action;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

import mybatis.bean.MyBatisManager;
import mybatis.bean.User;

public class LoginAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private Logger logger = Logger.getLogger(LoginAction.class);
	
	public static SqlSessionFactory sqlMapper = MyBatisManager.getSqlSession();
	
	private User user = new User();

	@Override
	public String execute() throws Exception {
		SqlSession session = null;
		logger.info("userLogin 액션");
		try {
			session = sqlMapper.openSession();
			session.selectOne("userLogin", user);
			logger.info("userLogin SQL 문 실행. userㄱ");
			logger.info("userLogin SQL 문 실행");
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		session.close();
		return SUCCESS;
	}
}
