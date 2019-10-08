package com.ourcompany.class247.course.vo;

public class Category {
	
	private int categoryNum;
	private String categoryName;
	
	public Category() {
		
	}

	public Category(int categoryNum, String categoryName) {
		super();
		this.categoryNum = categoryNum;
		this.categoryName = categoryName;
	}

	int getCategoryNum() {
		return categoryNum;
	}

	void setCategoryNum(int categoryNum) {
		this.categoryNum = categoryNum;
	}

	String getCategoryName() {
		return categoryName;
	}

	void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	@Override
	public String toString() {
		return "Category [categoryNum=" + categoryNum + ", categoryName=" + categoryName + "]";
	}
	
	

}
