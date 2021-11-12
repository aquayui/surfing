package servlet;

public class information {
	public String type;
	public double averageSalary;
	public int recruitNum;
	public information(String type, double averageSalary, int recruitNum) {
		super();
		this.type = type;
		this.averageSalary = averageSalary;
		this.recruitNum = recruitNum;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public double getAverageSalary() {
		return averageSalary;
	}
	public void setAverageSalary(double averageSalary) {
		this.averageSalary = averageSalary;
	}
	public int getRecruitNum() {
		return recruitNum;
	}
	public void setRecruitNum(int recruitNum) {
		this.recruitNum = recruitNum;
	}
	
}
