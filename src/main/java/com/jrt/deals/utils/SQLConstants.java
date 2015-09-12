/**
 * 
 */
package com.jrt.deals.utils;

/**
 * @author Prakasa Totta
 *
 */
public class SQLConstants {

	public static final String UPDATE_QUERY_DEALS_DETAILS = null;
	public static final String DELETE_QUERY_DEALS_DETAILS = null;
	public static final String SELECT_DEALS_DETAILS = "select * from product where";
	public static final String SELECT_ALL_DEALS = "select * from product where PRODUCT_POST_STATUS='A' order by PRODUCT_DISPLAY_ORDER asc";
	public static final String SELECT_ALL_HOT_DEALS = "select * from product where PRODUCT_POST_STATUS='A' and PRODUCT_HOT_DEAL = 'Y' order by PRODUCT_DISPLAY_ORDER asc";
	public static final String SELECT_ALL_POPULAR_DEALS = "select * from product where PRODUCT_POST_STATUS='A' and PRODUCT_POPULAR_DEAL = 'Y' order by PRODUCT_DISPLAY_ORDER asc";
	public static final String SELECT_ALL_CLEARANCE_DEALS = "select * from product where PRODUCT_POST_STATUS='A' and PRODUCT_CLEARANCE_DEAL = 'Y' order by PRODUCT_DISPLAY_ORDER asc";
	public static final String SELECT_TOP_DEALS = "select * from product where PRODUCT_POST_STATUS='T' order by PRODUCT_DISPLAY_ORDER asc";
	public static final String INSERT_DEAL = "Insert into product(CATEGORY_ID ,PRODUCT_NAME,PRODUCT_DETAILS,PRODUCT_IMAGE_URL,PRODUCT_DEAL_URL,PRODUCT_VENDOR,PRODUCT_ACTUAL_PRICE,PRODUCT_SALE_PRICE,PRODUCT_COUPON,PRODUCT_POST_STATUS,PRODUCT_HOT_DEAL,PRODUCT_POPULAR_DEAL,PRODUCT_CLEARANCE_DEAL,PRODUCT_DISPLAY_ORDER,PRODUCT_USER_ID) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	public static final String SELECT_DEALS_BY_CAT = "select * from product where CATEGORY_ID=? order by PRODUCT_DISPLAY_ORDER asc";
	
	public static final String SELECT_RELATED_DEALS = null;

	public static final String INSERT_USER = "Insert into MD_USER(USER_NAME,USER_PWD,USER_EMAILID,USER_ROLE_ID) values(?,?,?,?)";
}
