package servlet;

public class salary {
	public String salaryName;
	public int salary;
	public salary(String salaryName, int salary) {
		super();
		this.salaryName = salaryName;
		this.salary = salary;
	}
	public String getSalaryName() {
		return salaryName;
	}
	public void setSalaryName(String salaryName) {
		this.salaryName = salaryName;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	
}
