package servlet;

public class date {
	public String job_name;
	public String[] yearName= {"null","应届生","1-3年","3-5年","5-10年","10年以上","不限经验"};
	public int []year;
	public String[] salaryName= {"null","10k以下","10-20k","20-35k","35-50k","50k以上"};
	public int []salary;
	public String[] eduName= {"null","中专","高中","大专","本科","硕士","博士","不限学历"};
	public int []education;
	public date(String job_type, int[] year, int[] salary, int[] education) {
		super();
		this.job_name = job_type;
		this.year = year;
		this.salary = salary;
		this.education = education;
	}
	public String getJob_name() {
		return job_name;
	}
	public void setJob_name(String job_name) {
		this.job_name = job_name;
	}
	public String[] getYearName() {
		return yearName;
	}
	public void setYearName(String[] yearName) {
		this.yearName = yearName;
	}
	public int[] getYear() {
		return year;
	}
	public void setYear(int[] year) {
		this.year = year;
	}
	public String[] getSalaryName() {
		return salaryName;
	}
	public void setSalaryName(String[] salaryName) {
		this.salaryName = salaryName;
	}
	public int[] getSalary() {
		return salary;
	}
	public void setSalary(int[] salary) {
		this.salary = salary;
	}
	public String[] getEduName() {
		return eduName;
	}
	public void setEduName(String[] eduName) {
		this.eduName = eduName;
	}
	public int[] getEducation() {
		return education;
	}
	public void setEducation(int[] education) {
		this.education = education;
	}	
	
}
