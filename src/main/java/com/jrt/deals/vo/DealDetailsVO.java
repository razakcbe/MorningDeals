/**
 * 
 */
package com.jrt.deals.vo;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * @author Prakasa Totta
 *
 */
public class DealDetailsVO implements Serializable{

	private Integer productId;
	private Integer categoryId;
	private String productName;
	private String productDescription;
	private String dealUrl;
	private String imageUrl;
	private String vendorName;
	private BigDecimal actualPrice;
	private BigDecimal salePrice;
	private String cuponCode;
	private String status;
	private String hotDeal;
	private String popularDeal;
	private String clearanceDeal;
	private int displayOrder;
	private String userId;
	
	public DealDetailsVO(){
		
	}
	public DealDetailsVO(Integer productId,Integer categoryId,String productName,String productDescription,String dealUrl,
			String imageUrl,String vendorName,BigDecimal actualPrice,BigDecimal salePrice,String cuponCode,String status,String hotDeal,
			String popularDeal,String clearanceDeal,int displayOrder,String userId){
		this.productId = productId;
		this.categoryId = categoryId;
		this.productName = productName;
		this.productDescription = productDescription;
		this.dealUrl = dealUrl;
		this.imageUrl = imageUrl;
		this.vendorName = vendorName;
		this.actualPrice = actualPrice;
		this.salePrice = salePrice;
		this.cuponCode = cuponCode;
		this.status = status;
		this.hotDeal = hotDeal;
		this.popularDeal = popularDeal;
		this.clearanceDeal = clearanceDeal;
		this.displayOrder = displayOrder;
		this.userId = userId;
		}
	public String toString(){
		StringBuilder builder = new StringBuilder();
		builder.append("[ dealUrl="+dealUrl+",imageUrl="+imageUrl);
		builder.append(", productName="+productName+",productDescription="+productDescription);
		builder.append(", actualPrice="+actualPrice+",salePrice="+salePrice+" ]");
		return builder.toString();
	}
	public String getDealUrl() {
		return dealUrl;
	}
	public void setDealUrl(String dealUrl) {
		this.dealUrl = dealUrl;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	public BigDecimal getActualPrice() {
		return actualPrice;
	}
	public void setActualPrice(BigDecimal actualPrice) {
		this.actualPrice = actualPrice;
	}
	public BigDecimal getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(BigDecimal salePrice) {
		this.salePrice = salePrice;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	public String getVendorName() {
		return vendorName;
	}
	public void setVendorName(String vendorName) {
		this.vendorName = vendorName;
	}
	public String getCuponCode() {
		return cuponCode;
	}
	public void setCuponCode(String cuponCode) {
		this.cuponCode = cuponCode;
	}
	public String getStatus() {
		return status == null?"A":status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getHotDeal() {
		return hotDeal.equals("Yes")?"Y":"N";
	}
	public void setHotDeal(String hotDeal) {
		this.hotDeal = hotDeal;
	}
	public String getPopularDeal() {
		return popularDeal.equals("Yes")?"Y":"N";
	}
	public void setPopularDeal(String popularDeal) {
		this.popularDeal = popularDeal;
	}
	public String getClearanceDeal() {
		return clearanceDeal.equals("Yes")?"Y":"N";
	}
	public void setClearanceDeal(String clearanceDeal) {
		this.clearanceDeal = clearanceDeal;
	}
	public int getDisplayOrder() {
		return displayOrder;
	}
	public void setDisplayOrder(int displayOrder) {
		this.displayOrder = displayOrder;
	}
	public String getUserId() {
		return userId == null?"Test":userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
}
