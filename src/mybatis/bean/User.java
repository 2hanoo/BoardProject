package mybatis.bean;

public class User {

	private int		 no;
	private String	 id;
	private String	 pw;
	private String	 writer;
	
	@Override
	public String toString() {
		return "User [no= " + no +", id= " + id + ", pw = "+ pw + ", writer = "+ writer +"]" ;
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
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
