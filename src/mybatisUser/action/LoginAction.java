package mybatisUser.action;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import mybatis.bean.MyBatisManager;
import mybatis.bean.User;

public class LoginAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private Logger logger = Logger.getLogger(LoginAction.class);
	private String id;
	private String pw;
	private String writer;
	private String msg; //로그인 실패 여부 
	
	public static SqlSessionFactory sqlMapper = MyBatisManager.getSqlSession();
	

	@Override
	public String execute() throws Exception {
		logger.info("userLogin 액션");
		SqlSession session = sqlMapper.openSession();
		User user = new User();
		user.setId(id); // 입력 받은 id pw 값
		user.setPw(pw);
		User loginCheck = session.selectOne("login", user);
		writer = loginCheck.getWriter();
		logger.info("userLogin SQL 문 실행."+loginCheck);
		if(loginCheck != null){
			ActionContext context = ActionContext.getContext();
			Map<String, Object> ss = context.getSession();
			ss.put("id" , loginCheck.getId());
			ss.put("pw" , loginCheck.getPw());
			ss.put("writer" , loginCheck.getWriter());
			context.setSession(ss);
			return SUCCESS;
		}
		else{
			msg="아이디 또는 비밀번호가 다릅니다. 다시 입력하세요.";
			return ERROR;
		}
	}
	public String getMsg() {
		return msg;
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
}
