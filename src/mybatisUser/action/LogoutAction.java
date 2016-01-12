package mybatisUser.action;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

import mybatis.bean.MyBatisManager;

public class LogoutAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private Logger logger = Logger.getLogger(LogoutAction.class);
	
	public static SqlSessionFactory sqlMapper = MyBatisManager.getSqlSession();
	
	private String id;
	private String pw;
	private String writer;
	


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
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