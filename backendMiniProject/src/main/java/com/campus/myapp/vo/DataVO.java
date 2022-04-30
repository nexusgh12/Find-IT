package com.campus.myapp.vo;

public class DataVO {
	private int no;
	private String userid;
	private String product;
	private String price;
	private String writedate;
	private String category;
	private String option1;
	private String option2;
	

	private String filename1;
	private String filename2;
	
	private String[] delFile;
	
	public String toString() {
		return userid+", "+product+", "+price+", "+option1+", "+option2;
	}
	
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	public String getFilename1() {
		return filename1;
	}
	public void setFilename1(String filename1) {
		this.filename1 = filename1;
	}
	public String getFilename2() {
		return filename2;
	}
	public void setFilename2(String filename2) {
		this.filename2 = filename2;
	}

	public String[] getDelFile() {
		return delFile;
	}

	public void setDelFile(String[] delFile) {
		this.delFile = delFile;
	}
	
	
}