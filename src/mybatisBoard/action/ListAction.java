package mybatisBoard.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import mybatisBoard.bean.Board;
import mybatisBoard.bean.MyBatisManager;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ListAction extends ActionSupport {
	private Logger logger = Logger.getLogger(ListAction.class);
	
	public static SqlSessionFactory sqlMapper = MyBatisManager.getSqlSession();
	@SuppressWarnings("rawtypes")
	// @SuppressWarnigs("이 안에 제외시킬 경고 속성 정의")
	// rawtypes 제네릭을 사용하는 클래스 매개변수가 불특정 일 때 경고

	private List list = new ArrayList();
	private PagingAction page; // 페이징 클래스
	private String keyField; // 검색 keyField
	private String keyWord; // 검색 keyWord
	private String pagingHtml;
	private int currentPage = 1; // 현재 페이지
	private int totalCount;
	private int blockCount = 5; // 한 페이지의 게시물 수
	private int blockPage = 3; // 한 화면에 보여줄 페이지 수

	@Override
	public String execute() {
		SqlSession session = sqlMapper.openSession();
		Map<String, Object> mp = new HashMap<String, Object>();
		mp.put("keyField", keyField);
		mp.put("keyWord", keyWord);
		// 총 게시물 수를 구함
		totalCount = (Integer) session.selectOne("getTotalCount", mp);
		page = new PagingAction(currentPage, totalCount, blockCount, blockPage, keyField, keyWord);
		pagingHtml = page.getPagingHtml().toString(); // 페이징을 구현한 HTML
		int startRow = page.getStartCount(); // 현재 페이지의 게시물 시작 번호
		int endRow = page.getEndCount(); // 현재 페이지의 게시물 끝 번호
		if (endRow > totalCount) {
			endRow = totalCount;
		}
		mp.put("startRow", startRow);
		mp.put("endRow", endRow);
		// 현재 페이지의 게시물 수만큼 게시물 리시트를 가져온다
		list = session.selectList("listBoard", mp);
		session.close();
		return SUCCESS;
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

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public ArrayList<Board> getList() {
		return (ArrayList) list;
	}

	public String getPagingHtml() {
		return pagingHtml;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
}
