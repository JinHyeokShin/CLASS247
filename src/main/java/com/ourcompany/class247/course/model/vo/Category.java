package com.ourcompany.class247.course.model.vo;

public class Category {
	
	private int categoryNum;		//카테고리번호
	private String categoryName;	//카테고리이름
	
	public Category() {
		
	}

	public Category(int categoryNum, String categoryName) {
		super();
		this.categoryNum = categoryNum;
		this.categoryName = categoryName;
	}

	

	public int getCategoryNum() {
		return categoryNum;
	}

	public void setCategoryNum(int categoryNum) {
		this.categoryNum = categoryNum;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	@Override
	public String toString() {
		return "Category [categoryNum=" + categoryNum + ", categoryName=" + categoryName + "]";
	}
	
	

}
