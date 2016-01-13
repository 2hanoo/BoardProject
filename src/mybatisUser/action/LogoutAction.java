package mybatisUser.action;

import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import mybatis.bean.MyBatisManager;

public class LogoutAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private Logger logger = Logger.getLogger(LogoutAction.class);

	public static SqlSessionFactory sqlMapper = MyBatisManager.getSqlSession();

	@Override
	public String execute() {
		ActionContext context = ActionContext.getContext();
		Map<String, Object> ss = context.getSession();
		logger.info("로그아웃 클릭"+ ss);
		ss.clear();
		context.setSession(ss);// 초기화
		return SUCCESS;
	}
}