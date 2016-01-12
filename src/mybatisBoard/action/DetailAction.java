package mybatisBoard.action;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import mybatis.bean.Board;
import mybatis.bean.MyBatisManager;

public class DetailAction extends ActionSupport 
{
	private Logger logger = Logger.getLogger(DetailAction.class);
	
	public static SqlSessionFactory sqlMapper = MyBatisManager.getSqlSession();
	
	private Board bo; //BOARD 내 파라미터들 담는다.
	private String keyField; // 검색 keyField
	private String keyWord; // 검색 keyWord
	private String pwdarg; // 클릭한 게시글 패스워드
	private int currentPage; // 현재 페이지
	private int seqarg; // 클릭한 게시글 번호

	
	//패스워드 체크폼
	public String checkForm()
	{
		return SUCCESS;
	}
	//상세보기 폼
	public String form() 
	{
		return SUCCESS;
	}
	
	//패스워드 체크 액션
	public String pwdCheck()
	{
		SqlSession session = sqlMapper.openSession();
		bo = (Board) session.selectOne("detailBoard",seqarg);
		session.close();
		if(bo.getPwd().equals(pwdarg) == false){
		return ERROR;
		}
	return SUCCESS;
		
	}
	//수정폼에서 상세보기
	public String updateForm(){
		SqlSession session = sqlMapper.openSession();
		bo = (Board) session.selectOne("detailBoard", seqarg);
		session.commit();
		session.close();
		return SUCCESS;
		}

	@Override
	public String execute() throws Exception 
	{
		SqlSession session = sqlMapper.openSession();
		session.update("updateHit",seqarg);
		session.commit();
		bo = (Board)session.selectOne("detailBoard",seqarg);
		logger.info(bo.toString());
		session.close();
		return SUCCESS;
	}
	
	public String getKeyField() {
		return keyField;
	}
	public void setKeyField(String keyField) {
		this.keyField = keyField;
	}
	public String getKeyWord() {
		return keyWord;
	}
	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
	public String getPwdarg() {
		return pwdarg;
	}
	public void setPwdarg(String pwdarg) {
		this.pwdarg = pwdarg;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getSeqarg() {
		return seqarg;
	}
	public void setSeqarg(int seqarg) {
		this.seqarg = seqarg;
	}
	//bo 에 읽어온 값을 가져오기
	public Board getBo() {   
		return bo;
	}
}
