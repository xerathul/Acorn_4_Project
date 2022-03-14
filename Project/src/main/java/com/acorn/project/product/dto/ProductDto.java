package com.acorn.project.product.dto;

public class ProductDto {
	private String productId;
	private String productName;
	private int price;
	private int stock;
	private String productCate; //상품 카테고리
	private String regDate;
	private String updateDate;
	private int buyCount;
	private String imagePath;
	   
	public ProductDto() {}

	public ProductDto(String productId, String productName, int price, int stock, String productCate, String regDate,
			String updateDate, int buyCount, String imagePath) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.price = price;
		this.stock = stock;
		this.productCate = productCate;
		this.regDate = regDate;
		this.updateDate = updateDate;
		this.buyCount = buyCount;
		this.imagePath = imagePath;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public String getProductCate() {
		return productCate;
	}

	public void setProductCate(String productCate) {
		this.productCate = productCate;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}

	public int getBuyCount() {
		return buyCount;
	}

	public void setBuyCount(int buyCount) {
		this.buyCount = buyCount;
	}

	public String getimagePath() {
		return imagePath;
	}

	public void setimagePath(String imagePath) {
		this.imagePath = imagePath;
	}
   
   
}
