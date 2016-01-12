package mybatisBoard.action;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import mybatis.bean.Board;
import mybatis.bean.MyBatisManager;

public class UpdateAction extends ActionSupport implements Preparable, ModelDriven<Board> {
	public static SqlSessionFactory sqlMapper = MyBatisManager.getSqlSession();
	private Board bo;
	private int seqarg; 		//수정하는 게시물의 글 번호
	private int currentPage; 	// 수정 하는 게시물의 원래 리스트 페이지 번호
	private String keyField;	// 수정 하는 게시물의 검색 키워드 필드
	private String keyWord;		// 수정하는 게시물의 검색 키워드 

	@Override
	public String execute() {
		bo.setSeq(seqarg);
		SqlSession session = sqlMapper.openSession();
		session.update("update", bo);
		session.commit();
		session.close();
		return SUCCESS;
	}

	@Override
	public Board getModel() {
		return bo;
	}

	@Override
	public void prepare() throws Exception {
		bo = new Board();
	}

	public int getSeqarg() {
		return seqarg;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public String getKeyField() {
		return keyField;
	}

	public String getKeyWord() {
		return keyWord;
	}

	public void setSeqarg(int seqarg) {
		this.seqarg = seqarg;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public void setKeyField(String keyField) {
		this.keyField = keyField;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
}
