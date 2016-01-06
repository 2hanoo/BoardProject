package mybatisBoard.action;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import mybatisBoard.bean.Board;
import mybatisBoard.bean.MyBatisManager;

@SuppressWarnings("serial")
public class WriteAction extends ActionSupport implements Preparable, ModelDriven<Board> {
	private Logger logger = Logger.getLogger(ListAction.class);
	public static SqlSessionFactory sqlMapper = MyBatisManager.getSqlSession();
	private Board bo;
	private int currentPage;
	private String keyField;
	private String keyWord;
	private int seq;
	private int seqarg;
	private int step;
	private int levels;

	@Override
	public Board getModel() {
		return bo;
	}

	@Override
	public void prepare() throws Exception {
		bo = new Board();
	}

	public String form() {
		return SUCCESS;
	}

	@Override
	public String execute() {
		SqlSession session = sqlMapper.openSession();
		// DB에 있는 seq값의 최대값에 +1(다음에 입력될 레코드의 seq 값이랑 같음)을 groups값으로 지정
		seq = ((Integer) session.selectOne("getMaxSeq")) + 1;
		step = 0;
		levels = 0;
		bo.setGroups(seq);
		bo.setStep(step);
		bo.setLevels(levels);
		session.insert("insertBoard", bo);
		session.commit();
		session.close();
		return SUCCESS;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public String getKeyField() {
		return keyField;
	}

	public String getKeyWord() {
		return keyWord;
	}

	public void setKeyField(String keyField) {
		this.keyField = keyField;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}

	public int getSeqarg() {
		return seqarg;
	}

	public void setSeqarg(int seqarg) {
		this.seqarg = seqarg;
	}
}