package kr.co.studystory.admin.vo;

public class NoticeBoardVO {
	private String searchWord ,nNum;
	private int begin, end,currPage;
	
	
	public String getnNum() {
		return nNum;
	}
	public void setnNum(String nNum) {
		this.nNum = nNum;
	}
	public String getSearchWord() {
		return searchWord;
	}
	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}
	public int getBegin() {
		return begin;
	}
	public void setBegin(int begin) {
		this.begin = begin;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getCurrPage() {
		return currPage;
	}
	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}
	
	
}
