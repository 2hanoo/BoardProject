package mybatisBoard.action;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.opensymphony.xwork2.ActionSupport;

import mybatisBoard.bean.MyBatisManager;

@SuppressWarnings("serial")
public class WriteAction extends ActionSupport {
	public static SqlSessionFactory sqlMapper = MyBatisManager.getSqlSession();
	@SuppressWarnings("rawtypes")
	private String writer;
	private String title;
	private String content;
	private String pwd;

	public String form() throws Exception {
		return SUCCESS;
	}

	@Override
	public String execute() throws Exception {
		SqlSession session = sqlMapper.openSession();
		Map<String, Object> mp = new HashMap<String, Object>();
		mp.put("writer", writer);
		mp.put("title", title);
		mp.put("content", content);
		mp.put("pwd", pwd);
		
		session.insert("write",mp);
		session.close();
		return SUCCESS;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
}
