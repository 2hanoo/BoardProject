package mybatisBoard.action;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.opensymphony.xwork2.ActionSupport;

import mybatisBoard.bean.MyBatisManager;

public class DeleteAction extends ActionSupport {
	public static SqlSessionFactory sqlMapper = MyBatisManager.getSqlSession();
	private int currentPage;
	private int seqarg;
	private String keyField;
	private String keyWord;

	@Override
	public String execute() {
		SqlSession session = sqlMapper.openSession();
		session.delete("deleteBoard", seqarg);
		session.commit();
		session.close();
		return SUCCESS;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public int getSeqarg() {
		return seqarg;
	}

	public String getKeyField() {
		return keyField;
	}

	public String getKeyWord() {
		return keyWord;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public void setSeqarg(int seqarg) {
		this.seqarg = seqarg;
	}

	public void setKeyField(String keyField) {
		this.keyField = keyField;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
}
