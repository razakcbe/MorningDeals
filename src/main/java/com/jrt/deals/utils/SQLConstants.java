/**
 * 
 */
package com.jrt.deals.utils;

/**
 * @author Prakasa Totta
 *
 */
public class SQLConstants {

	public static final String UPDATE_QUERY_DEALS_DETAILS = "UPDATE product "
			+"SET category_id=?,product_name=?,product_details=?,product_image_url=?,product_deal_url=?,product_vendor=?,product_actual_price=?,product_sale_price=?,product_coupon=?,product_post_status=?,product_hot_deal=?,product_popular_deal=?, "
					+"product_clearance_deal=?,product_display_order=?,product_user_id=?,product_updated_by=?,product_posted_dt=?,product_updated_dt=? WHERE  product_id= ?";
	public static final String DELETE_QUERY_DEALS_DETAILS = null;
	public static final String SELECT_DEALS_DETAILS = "select * from product where";
	public static final String SELECT_ACTIVE_DEALS = "select * from product where product_post_status='A' order by product_display_order asc";
	public static final String SELECT_ALL_DEALS = "select * from product order by product_display_order asc";
	public static final String SELECT_ALL_HOT_DEALS = "select * from product where product_post_status='A' and product_hot_deal = 'Y' order by product_display_order asc";
	public static final String SELECT_ALL_POPULAR_DEALS = "select * from product where product_post_status='A' and product_popular_deal = 'Y' order by product_display_order asc";
	public static final String SELECT_ALL_CLEARANCE_DEALS = "select * from product where product_post_status='A' and product_clearance_deal = 'Y' order by product_display_order asc";
	public static final String SELECT_ALL_CUPON_DEALS = "select * from product where product_post_status='A' and product_coupon is not null and product_coupon <> '' order by product_display_order asc";
	
	public static final String SELECT_FREE_TEXT_DEALS = "select * from product  where ";
	public static final String SELECT_TOP_DEALS = "select * from product where product_post_status='T' order by product_display_order asc";
	public static final String INSERT_DEAL = "Insert into product(CATEGORY_ID ,PRODUCT_NAME,PRODUCT_DETAILS,PRODUCT_IMAGE_URL,PRODUCT_DEAL_URL,PRODUCT_VENDOR,PRODUCT_ACTUAL_PRICE,PRODUCT_SALE_PRICE,PRODUCT_COUPON,PRODUCT_POST_STATUS,PRODUCT_HOT_DEAL,PRODUCT_POPULAR_DEAL,PRODUCT_CLEARANCE_DEAL,PRODUCT_DISPLAY_ORDER,PRODUCT_USER_ID, PRODUCT_UPDATED_BY, PRODUCT_UPDATED_DT, PRODUCT_POSTED_DT) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	public static final String SELECT_DEALS_BY_CAT = "select * from product where category_id=? order by product_display_order asc";
	public static final String SELECT_DEALS_BY_CAT_IN = "select * from product where category_id in (?) order by product_display_order asc";
	public static final String SELECT_RELATED_DEALS = "select * from product where  category_id = (select category_id from product where product_id=?) and product_id <> ?";

	public static final String INSERT_USER = "Insert into md_user(USER_NAME,USER_PWD,USER_EMAILID,USER_ROLE_ID) values(?,?,?,?)";
	
	public static final String SELECT_USER = "select * from md_user where (USER_EMAILID = 'email' or USER_NAME= 'email') and USER_PWD = 'saltedPassword'";
	public static final String SELECT_USER_EXCEPT = "select * from md_user where USER_ID   <> ?";
	
	public static final String subSql2001 = "10001,10002,10003,10004,10005,10006,10007,10008,10009,10010,10011,10012";
	public static final String subSql2002 = "10013,10014,10015,10016,10017,10018,10019,10020,10021,10022";
	public static final String subSql2003 = "10024,10025,10026,10027,10028,10029,10030,10031,10032,10033";
	public static final String subSql2004 = "10044,10045,10046,10047,10048,10049,10050,10051,10052,10053,10054";
	public static final String subSql2005 = "10055,10056,10057,10058,10059,10060,10061,10062,10063";
	public static final String subSql2006 = "10064,10065,10066,10067,10068,10069";
	public static final String subSql2007 = "10070,10071,10072,10073,10074,10075,10076,10077,10078,10079,10080,10081,10082";
}
