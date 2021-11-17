package servlet;

public class year {
	public String yearName;
	public int yearNum;
	public year(String yearName, int yearNum) {
		super();
		this.yearName = yearName;
		this.yearNum = yearNum;
	}
	public String getYearName() {
		return yearName;
	}
	public void setYearName(String yearName) {
		this.yearName = yearName;
	}
	public int getYearNum() {
		return yearNum;
	}
	public void setYearNum(int yearNum) {
		this.yearNum = yearNum;
	}
	
}
