package mybatisUser.action;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

import mybatis.bean.MyBatisManager;
import mybatis.bean.User;

@SuppressWarnings("serial")
public class JoinAction extends ActionSupport {
	private Logger logger = Logger.getLogger(JoinAction.class);
	public static SqlSessionFactory sqlMapper = MyBatisManager.getSqlSession();
	
	private String id;
	private String pw;
	private String writer;
	private String msg;


	public String form() {
		return SUCCESS;
	}

	@Override
	public String execute() throws Exception {
		SqlSession session = sqlMapper.openSession();
		int idCheck = session.selectOne("idCheck",id);   
		// idCheck SQL = 입력된 아이디 값이 조회가 될 경우 1 호출. 
		if(idCheck==0){ //아이디 조회가 안될 경우 
			User user = new User();
			user.setId(id);
			user.setPw(pw);
			user.setWriter(writer);
			session.insert("join", user);
			logger.info("SQL 실행");
			session.commit();
			logger.info("커밋 성공");
			session.close();
			logger.info("세션 종료");
			return SUCCESS;
		}
		else{ //아이디 조회가 될 경우
			msg="중복된 아이디가 존재합니다.";
			return ERROR;
		}
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getMsg() {
		return msg;
	}
}
