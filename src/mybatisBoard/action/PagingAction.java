package mybatisBoard.action;

public class PagingAction {
private int currentPage;   //현재 페이지
private int totalCount;    //전체 게시물 수
private int totalPage;     //전체 페이지 수
private int blockCount;	   //한 페이지의 게시물 수
private int blcokPage;     //한 화면에 보여질 페이지 수
private int startCount;    //한 페이지에 보여줄 게시물의 시작 번호
private int endCount;      //한 페이지에 보여줄 게시물의 끝 번호
private int startPage;     //시작 페이지
private int endPage;       //끝 페이지
private StringBuffer pagingHtml;
	
public PagingAction(int currentPage, int totalCount, int blockCount, int blockPage, String keyField, String keyWord){
this.currentPage = currentPage;
this.totalCount = totalCount;
this.blockCount = blockCount;
this.blcokPage = blockPage;
		
/* totalCount=10, blockCount=3 이면 3.3이지만 페이지는 4페이지가 필요 Math.ceil함수를 사용해서 소수자리 올림 */
totalPage = (int)Math.ceil((double)totalCount/blockCount);
if(totalPage == 0){ //게시물이 하나도 없는 경우 전체 페이지 수를 1로 지정
totalPage = 1;
}
if(currentPage > totalPage){ 
currentPage = totalPage;
}
startCount = (currentPage-1)*blockCount+1;
endCount = startCount + blockCount-1;
startPage = (int)((currentPage-1)/blockPage)*blockPage+1;
endPage = startPage + blockPage-1;
if(endPage > totalPage){
endPage = totalPage;
}
pagingHtml = new StringBuffer();
if(keyWord == null || keyWord.equals("")){ //검색이 없는 경우
if(currentPage > blockPage){ 
pagingHtml.append("<a href='list.action?currentPage="+
(startPage-1)+"'>");
pagingHtml.append("[이전]");
pagingHtml.append("</a>");
}
pagingHtml.append("&nbsp;|&nbsp;");			
for(int i=startPage;i<=endPage;i++){
if(i>totalPage){
break;
}
if(i == currentPage){ //현재 페이지는 빨간색으로 표시 하이퍼링크 없음
pagingHtml.append("&nbsp;<b><font color='red'>");
pagingHtml.append(i);
pagingHtml.append("</font></b>");
}
else{
pagingHtml.append("&nbsp;<a href='list.action?currentPage=");
	pagingHtml.append(i);
	pagingHtml.append("'>");
	pagingHtml.append(i);
	pagingHtml.append("</a>");
}
pagingHtml.append("&nbsp;");
}
pagingHtml.append("&nbsp;&nbsp;|&nbsp;&nbsp;");
if(endPage<totalPage){
pagingHtml.append("<a href='list.action?currentPage="+
(endPage+1)+"'>");
pagingHtml.append("[다음]");
	pagingHtml.append("</a>");
}
}
else{ //검색이 있는 경우
if(currentPage > blockPage){
	pagingHtml.append("<a href='list.action?currentPage="+
(startPage-1)+"&keyField="+keyField+"&keyWord="+keyWord+"'>");
	pagingHtml.append("[이전]");
	pagingHtml.append("</a>");
}
pagingHtml.append("&nbsp;|&nbsp;");
for(int i=startPage;i<=endPage;i++){
if(i>totalPage){
break;
}
if(i == currentPage){
pagingHtml.append("&nbsp;<b><font color='red'>");
	pagingHtml.append(i);
	pagingHtml.append("</font></b>");
}
else{
pagingHtml.append("&nbsp;<a href='list.action?currentPage=");
	pagingHtml.append(i);
	pagingHtml.append("&keyField="+keyField+
"&keyWord="+keyWord+"'>");
	pagingHtml.append(i);
	pagingHtml.append("</a>");
}
pagingHtml.append("&nbsp;");
}
pagingHtml.append("&nbsp;&nbsp;|&nbsp;&nbsp;");
if(endPage<totalPage){
pagingHtml.append("<a href='list.action?currentPage="+
(endPage+1)+"&keyField="+keyField+"&keyWord="+keyWord+"'>");
pagingHtml.append("[다음]");
pagingHtml.append("</a>");
}
}
}
public int getCurrentPage() {
return currentPage;
}
public int getTotalCount() {
return totalCount;
}
public int getTotalPage() {
return totalPage;
}
public int getBlockCount() {
return blockCount;
}
public int getBlcokPage() {
return blcokPage;
}
public int getStartCount() {
return startCount;
}
public int getEndCount() {
return endCount;
}
public int getStartPage() {
return startPage;
}
public int getEndPage() {
return endPage;
}
public StringBuffer getPagingHtml() {
return pagingHtml;
}
public void setCurrentPage(int currentPage) {
this.currentPage = currentPage;
}
public void setTotalCount(int totalCount) {
this.totalCount = totalCount;
}
public void setTotalPage(int totalPage) {
this.totalPage = totalPage;
}
public void setBlockCount(int blockCount) {
this.blockCount = blockCount;
}
public void setBlcokPage(int blcokPage) {
this.blcokPage = blcokPage;
}
public void setStartCount(int startCount) {
this.startCount = startCount;
}
public void setEndCount(int endCount) {
this.endCount = endCount;
}
public void setStartPage(int startPage) {
this.startPage = startPage;
}
public void setEndPage(int endPage) {
this.endPage = endPage;
}
public void setPagingHtml(StringBuffer pagingHtml) {
this.pagingHtml = pagingHtml;
}
}
