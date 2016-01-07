package mybatisBoard.action;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import mybatisBoard.bean.Board;
import mybatisBoard.bean.MyBatisManager;

public class ReplyAction implements Preparable, ModelDriven<Board> {
	public static SqlSessionFactory sqlMapper = MyBatisManager.getSqlSession();
	private int seqarg;
	private int currentPage;
	private String keyField;
	private String keyWord;
	private Board bo;
	private int groups;
	private int step;
	private int levels;

	// 답변 액션
	public String execute() {
		Map<String, Integer> mp = new HashMap<String, Integer>();
		SqlSession session = sqlMapper.openSession();
		// 답변이 달리는 글의 정보를 가져온다
		Board tempBo = (Board) session.selectOne("detailBoard", seqarg);
		// 어느글의 답변인지 알기 위해 답변이 달리는 글의 groups값을 가져온다
		groups = tempBo.getGroups();
		// 답변의 정렬을 위해 답변이 달리는 글의 step값을 가져온다
		step = tempBo.getStep();
		// 들여쓰기를 위해 답변이 달리는 글의 levels값을 가져와서 +1을 해준다
		levels = tempBo.getLevels() + 1;
		mp.put("step", step);
		mp.put("groups", groups);
		// groups값이 같은 글 중에서 답변이 달리는 글보다 아래에 있는 글들의 step값에 +1을 해준다
		session.update("updateStep", mp);
		session.commit();
		bo.setGroups(groups);
		// 답변은 답변이 달리는 글 밑에 있어야 되므로 답변이 달리는 글의 step값에 +1을 해준다
		bo.setStep(step + 1);
		bo.setLevels(levels);
		session.insert("insertBoard", bo);
		session.commit();
		session.close();
		return "success";
	}

	// 답변 폼 액션
	public String form() {
		return "success";
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

	@Override
	public Board getModel() {
		return bo;
	}

	@Override
	public void prepare() throws Exception {
		bo = new Board();
	}
}
