package com.ourcompany.class247.payment.model.vo;

import java.sql.Date;

public class Chart {
    
    private int salaryNum;
    private int creNum;
    private int courseNum;
    private int amount;
    private int forMonth;
    private Date paidDate;
    private String salaryStatus;
    
    public Chart() {}
    
	public Chart(int creNum,int forMonth) {
		super();
		this.creNum = creNum;
		this.forMonth = forMonth;
	}
    
	public Chart(int salaryNum, int creNum, int courseNum, int amount, int forMonth, Date paidDate,
			String salaryStatus) {
		super();
		this.salaryNum = salaryNum;
		this.creNum = creNum;
		this.courseNum = courseNum;
		this.amount = amount;
		this.forMonth = forMonth;
		this.paidDate = paidDate;
		this.salaryStatus = salaryStatus;
	}


	public int getSalaryNum() {
		return salaryNum;
	}


	public void setSalaryNum(int salaryNum) {
		this.salaryNum = salaryNum;
	}


	public int getCreNum() {
		return creNum;
	}


	public void setCreNum(int creNum) {
		this.creNum = creNum;
	}


	public int getCourseNum() {
		return courseNum;
	}


	public void setCourseNum(int courseNum) {
		this.courseNum = courseNum;
	}


	public int getAmount() {
		return amount;
	}


	public void setAmount(int amount) {
		this.amount = amount;
	}


	public int getForMonth() {
		return forMonth;
	}


	public void setForMonth(int forMonth) {
		this.forMonth = forMonth;
	}


	public Date getPaidDate() {
		return paidDate;
	}


	public void setPaidDate(Date paidDate) {
		this.paidDate = paidDate;
	}


	public String getSalaryStatus() {
		return salaryStatus;
	}


	public void setSalaryStatus(String salaryStatus) {
		this.salaryStatus = salaryStatus;
	}


	@Override
	public String toString() {
		return "Chart [salaryNum=" + salaryNum + ", creNum=" + creNum + ", courseNum=" + courseNum + ", amount="
				+ amount + ", forMonth=" + forMonth + ", paidDate=" + paidDate + ", salaryStatus=" + salaryStatus + "]";
	}
	
	
    
    

}
