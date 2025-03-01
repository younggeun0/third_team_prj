package kr.co.studystory.admin.vo;

public class DetailStudyVO {
	private String sNum, category, loc, img, content;
	private int currPage;
	
	

	public int getCurrPage() {
		return currPage;
	}

	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}

	public String getsNum() {
		return sNum;
	}

	public void setsNum(String sNum) {
		this.sNum = sNum;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "DetailStudyVO [sNum=" + sNum + ", category=" + category + ", loc=" + loc + ", img=" + img + ", content="
				+ content + ", currPage=" + currPage + "]";
	}
	
}
