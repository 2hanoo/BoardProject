package mybatisBoard.action;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import mybatis.bean.Board;
import mybatis.bean.MyBatisManager;

@SuppressWarnings("serial")
public class WriteAction extends ActionSupport implements Preparable, ModelDriven<Board> {
	private Logger logger = Logger.getLogger(WriteAction.class);
	public static SqlSessionFactory sqlMapper = MyBatisManager.getSqlSession();
	private Board bo;

	@Override
	public Board getModel() {
		return bo;
	}

	@Override
	public void prepare() throws Exception {
		bo = new Board();
	}

	public String form() {
		logger.info("form 실행");
		return SUCCESS;
	}

	@Override
	public String execute() {
		SqlSession session = sqlMapper.openSession();
		logger.info("write"+bo);
		session.insert("insertBoard", bo);
		logger.info("SQL 실행");
		session.commit();
		logger.info("커밋성공");
		session.close();
		logger.info("세션 종료");
		return SUCCESS;
	}
}