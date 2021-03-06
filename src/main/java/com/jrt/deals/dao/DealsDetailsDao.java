package com.jrt.deals.dao;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.jrt.deals.utils.SHAHashing;
import com.jrt.deals.utils.SQLConstants;
import com.jrt.deals.vo.DealDetailsVO;
import com.jrt.deals.vo.UserVO;

@Transactional
@Repository("dealsDetailsDao")
public class DealsDetailsDao extends JdbcDaoSupport implements IDealsDetailsDao {

	private static final Logger log = Logger.getLogger(DealsDetailsDao.class);

	public void insert(DealDetailsVO detailsVO) {
		log.debug("--> insert");
		log.debug("Query: " + SQLConstants.INSERT_DEAL);
		log.debug("Params: " + detailsVO);

		getJdbcTemplate().update(SQLConstants.INSERT_DEAL,
				detailsVO.getCategoryId(), detailsVO.getProductName(),
				detailsVO.getProductDescription(), detailsVO.getImageUrl(),
				detailsVO.getDealUrl(), detailsVO.getVendorName(),
				detailsVO.getActualPrice(), detailsVO.getSalePrice(),
				detailsVO.getCuponCode(), detailsVO.getStatus(),
				detailsVO.getHotDeal(), detailsVO.getPopularDeal(),
				detailsVO.getClearanceDeal(), detailsVO.getDisplayOrder(),
				detailsVO.getUserId(),
				detailsVO.getUpdatedBy(),
				detailsVO.getPostedDate(),
				detailsVO.getUpdatedDate());
		log.debug("<-- insert");
	}

	public void update(DealDetailsVO detailsVO) {
		log.debug("--> update");
		log.debug("Query: " + SQLConstants.UPDATE_QUERY_DEALS_DETAILS);
		log.debug("Params: " + detailsVO);
		getJdbcTemplate().update(SQLConstants.UPDATE_QUERY_DEALS_DETAILS, "");
		log.debug("<-- update");
	}

	public void delete(long id) {
		log.debug("--> delete");
		log.debug("Query: " + SQLConstants.DELETE_QUERY_DEALS_DETAILS);
		log.debug("Params: userId=" + id);
		getJdbcTemplate().update(SQLConstants.DELETE_QUERY_DEALS_DETAILS, id);
		log.debug("<-- delete");
	}

	@Transactional(readOnly = true)
	public DealDetailsVO findById(long dealId) {
		log.debug("--> findById");
		log.debug("Query: " + SQLConstants.SELECT_DEALS_DETAILS);
		List<Map<String, Object>> rows = getJdbcTemplate().queryForList(
				SQLConstants.SELECT_DEALS_DETAILS + " PRODUCT_ID=" + dealId);
		DealDetailsVO dealDetailsVO =null;
		for (Map<String, Object> row : rows) {
			dealDetailsVO = populateDealDetails(row);
		}
		log.debug("<-- findById");
		return dealDetailsVO;
	}

	@Transactional(readOnly = true)
	public List<DealDetailsVO> findAllActiveDeals() {
		log.debug("--> findAllActiveDeals");
		log.debug("Query: " + SQLConstants.SELECT_ACTIVE_DEALS);
		List<DealDetailsVO> detailsVos = new ArrayList<DealDetailsVO>();
		try {
			List<Map<String, Object>> rows = getJdbcTemplate().queryForList(
					SQLConstants.SELECT_ACTIVE_DEALS);
			DealDetailsVO dealDetailsVO = null;
			for (Map<String, Object> row : rows) {
				dealDetailsVO = populateDealDetails(row);
				detailsVos.add(dealDetailsVO);
			}
		} catch (Exception ex) {
			ex.printStackTrace();

		}
		log.debug("<-- findAllActiveDeals");
		return detailsVos;
	}
	
	@Transactional(readOnly = true)
	public List<DealDetailsVO> findAllDeals() {
		log.debug("--> findAllDeals");
		log.debug("Query: " + SQLConstants.SELECT_ALL_DEALS);
		List<DealDetailsVO> detailsVos = new ArrayList<DealDetailsVO>();
		try {
			List<Map<String, Object>> rows = getJdbcTemplate().queryForList(
					SQLConstants.SELECT_ALL_DEALS);
			DealDetailsVO dealDetailsVO = null;
			for (Map<String, Object> row : rows) {
				dealDetailsVO = populateDealDetails(row);
				detailsVos.add(dealDetailsVO);
			}
		} catch (Exception ex) {
			ex.printStackTrace();

		}
		log.debug("<-- findAllDeals");
		return detailsVos;
	}

	@Transactional(readOnly = true)
	public List<DealDetailsVO> findDealsByCategory(Long long1) {
		log.debug("--> findDealsByCategory");
		List<DealDetailsVO> detailsVos = new ArrayList<DealDetailsVO>();
		String sql = getCateSQL(long1);
		log.debug("sql: " + sql);
		List<Map<String, Object>> rows = getJdbcTemplate().queryForList(sql);
		DealDetailsVO dealDetailsVO = null;
		try {
			for (Map<String, Object> row : rows) {
				dealDetailsVO = populateDealDetails(row);
				detailsVos.add(dealDetailsVO);
			}
		} catch (Exception ex) {
			ex.printStackTrace();

		}
		log.debug("<-- findDealsByCategory");
		return detailsVos;

	}
	
	private String getCateSQL(Long long1){
		String sql = SQLConstants.SELECT_DEALS_BY_CAT.replace("?",long1.toString());
		if(long1 == 20001){
			sql = SQLConstants.SELECT_DEALS_BY_CAT_IN.replace("?",SQLConstants.subSql2001);
		}else if(long1 == 20002){
			sql = SQLConstants.SELECT_DEALS_BY_CAT_IN.replace("?",SQLConstants.subSql2002);
		}else if(long1 == 20003){
			sql = SQLConstants.SELECT_DEALS_BY_CAT_IN.replace("?",SQLConstants.subSql2003);
		}else if(long1 == 20004){
			sql = SQLConstants.SELECT_DEALS_BY_CAT_IN.replace("?",SQLConstants.subSql2004);
		}else if(long1 == 20005){
			sql = SQLConstants.SELECT_DEALS_BY_CAT_IN.replace("?",SQLConstants.subSql2005);
		}else if(long1 == 20006){
			sql = SQLConstants.SELECT_DEALS_BY_CAT_IN.replace("?",SQLConstants.subSql2006);
		}else if(long1 == 20007){
			sql = SQLConstants.SELECT_DEALS_BY_CAT_IN.replace("?",SQLConstants.subSql2007);
		}
		return sql;
	}

	private DealDetailsVO populateDealDetails(Map<String, Object> row) {
		DealDetailsVO dealDetailsVO = new DealDetailsVO();
		dealDetailsVO.setProductId((Integer) row.get("PRODUCT_ID"));
		dealDetailsVO.setCategoryId((Integer) row.get("CATEGORY_ID"));
		dealDetailsVO.setProductName((String) row.get("PRODUCT_NAME"));
		dealDetailsVO.setProductDescription((String) row
				.get("PRODUCT_DETAILS"));
		dealDetailsVO
				.setImageUrl((String) row.get("PRODUCT_IMAGE_URL"));
		dealDetailsVO.setDealUrl((String) row.get("PRODUCT_DEAL_URL"));
		dealDetailsVO.setVendorName((String) row.get("PRODUCT_VENDOR"));
		dealDetailsVO.setActualPrice((BigDecimal) row
				.get("PRODUCT_ACTUAL_PRICE"));
		dealDetailsVO.setSalePrice((BigDecimal) row
				.get("PRODUCT_SALE_PRICE"));
		dealDetailsVO.setCuponCode((String) row.get("PRODUCT_COUPON"));
		dealDetailsVO
				.setStatus((String) row.get("PRODUCT_POST_STATUS"));
		dealDetailsVO.setHotDeal((String) row.get("PRODUCT_HOT_DEAL"));
		dealDetailsVO.setPopularDeal((String) row
				.get("PRODUCT_POPULAR_DEAL"));
		dealDetailsVO.setClearanceDeal((String) row
				.get("PRODUCT_CLEARANCE_DEAL"));
		dealDetailsVO.setDisplayOrder((Integer) row
				.get("PRODUCT_DISPLAY_ORDER"));
		dealDetailsVO.setUserId((Integer) row.get("PRODUCT_USER_ID"));
		dealDetailsVO.setUpdatedBy((String) row.get("PRODUCT_UPDATED_BY"));
		dealDetailsVO.setPostedDate((Date) row.get("PRODUCT_POSTED_DT"));
		dealDetailsVO.setUpdatedDate((Date) row.get("PRODUCT_UPDATED_DT"));
		return dealDetailsVO;
	}

	@Transactional(readOnly = true)
	public List<DealDetailsVO> findTopDeals() {
		log.debug("--> findTopDeals");
		log.debug("Query: " + SQLConstants.SELECT_ALL_POPULAR_DEALS);
		List<DealDetailsVO> detailsVos = new ArrayList<DealDetailsVO>();
		try {
			List<Map<String, Object>> rows = getJdbcTemplate().queryForList(
					SQLConstants.SELECT_ALL_POPULAR_DEALS);
			DealDetailsVO dealDetailsVO = null;
			for (Map<String, Object> row : rows) {
				dealDetailsVO = populateDealDetails(row);
				detailsVos.add(dealDetailsVO);
			}
		} catch (Exception ex) {
			ex.printStackTrace();

		}
		log.debug("<-- findTopDeals");
		return detailsVos;
	}

	@Transactional(readOnly = true)
	public List<DealDetailsVO> findRelatedDeals(Long productId) {
		log.debug("--> findRelatedDeals");
		log.debug("Query: " + SQLConstants.SELECT_RELATED_DEALS);
		List<DealDetailsVO> detailsVos = new ArrayList<DealDetailsVO>();
		try {
			List<Map<String, Object>> rows = getJdbcTemplate().queryForList(
					SQLConstants.SELECT_RELATED_DEALS,productId,productId);
			DealDetailsVO dealDetailsVO = null;
			for (Map<String, Object> row : rows) {
				dealDetailsVO = populateDealDetails(row);
				detailsVos.add(dealDetailsVO);
			}
		} catch (Exception ex) {
			ex.printStackTrace();

		}
		log.debug("<-- findRelatedDeals");
		return detailsVos;
	}

	public void insertUser(UserVO userVO) {
		log.debug("--> insertUser");
		log.debug("Query: " + SQLConstants.INSERT_USER);
		log.debug("Params: " + userVO);
		getJdbcTemplate().update(SQLConstants.INSERT_USER,userVO.getUserName(),userVO.getUserPwd(),userVO.getUserEmailId(),userVO.getRoleId());
		log.debug("<-- insertUser");
	}

	@Transactional(readOnly = true)
	public List<DealDetailsVO> findAllHotDeals() {
		log.debug("--> findAllHotDeals");
		log.debug("Query: " + SQLConstants.SELECT_ALL_HOT_DEALS);
		List<DealDetailsVO> detailsVos = new ArrayList<DealDetailsVO>();
		try {
			List<Map<String, Object>> rows = getJdbcTemplate().queryForList(
					SQLConstants.SELECT_ALL_HOT_DEALS);
			DealDetailsVO dealDetailsVO = null;
			for (Map<String, Object> row : rows) {
				dealDetailsVO = populateDealDetails(row);
				detailsVos.add(dealDetailsVO);
			}
		} catch (Exception ex) {
			ex.printStackTrace();

		}
		log.debug("<-- findAllHotDeals");
		return detailsVos;
	}

	@Transactional(readOnly = true)
	public List<DealDetailsVO> findAllClearanceDeals() {
		log.debug("--> findAllClearanceDeals");
		log.debug("Query: " + SQLConstants.SELECT_ALL_CLEARANCE_DEALS);
		List<DealDetailsVO> detailsVos = new ArrayList<DealDetailsVO>();
		try {
			List<Map<String, Object>> rows = getJdbcTemplate().queryForList(
					SQLConstants.SELECT_ALL_CLEARANCE_DEALS);
			DealDetailsVO dealDetailsVO = null;
			for (Map<String, Object> row : rows) {
				dealDetailsVO = populateDealDetails(row);
				detailsVos.add(dealDetailsVO);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		log.debug("<-- findAllClearanceDeals");
		return detailsVos;
	}
	
	@Transactional(readOnly = true)
	public List<DealDetailsVO> findAllCuponDeals() {
		log.debug("--> findAllCuponDeals");
		log.debug("Query: " + SQLConstants.SELECT_ALL_CUPON_DEALS);
		List<DealDetailsVO> detailsVos = new ArrayList<DealDetailsVO>();
		try {
			List<Map<String, Object>> rows = getJdbcTemplate().queryForList(
					SQLConstants.SELECT_ALL_CUPON_DEALS);
			DealDetailsVO dealDetailsVO = null;
			for (Map<String, Object> row : rows) {
				dealDetailsVO = populateDealDetails(row);
				detailsVos.add(dealDetailsVO);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		log.debug("<-- findAllCuponDeals");
		return detailsVos;
	}
	
	
	@Transactional(readOnly = true)
	public List<DealDetailsVO> getFreeTextSearch(String freeSeachText) {
		log.debug("--> getFreeTextSearch");
		
		List<DealDetailsVO> detailsVos = new ArrayList<DealDetailsVO>();
		String where = consturctWhere(freeSeachText);
		log.debug("where::"+where);
		if(freeSeachText != null && !"".equals(freeSeachText.trim()) ){
			String sql = SQLConstants.SELECT_FREE_TEXT_DEALS+" "+where;
			log.debug("SQL::"+sql);
			try {
				List<Map<String, Object>> rows = getJdbcTemplate().queryForList(sql);
				DealDetailsVO dealDetailsVO = null;
				for (Map<String, Object> row : rows) {
					dealDetailsVO = populateDealDetails(row);
					detailsVos.add(dealDetailsVO);
				}
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
	
		log.debug("<-- getFreeTextSearch");
		return detailsVos;
	}

	private String consturctWhere(String freeSeachText) {
		String freeText ="";
		if(freeSeachText != null && !"".equals(freeSeachText.trim()) ){
			String[] array = freeSeachText.split(" ");
			for(int index=0; index < array.length; index++){
				freeText = freeText+ " UPPER(product_name) LIKE"+" '%"+array[index].toUpperCase()+"%'";
				freeText = freeText+ " OR UPPER(product_details) LIKE"+" '%"+array[index].toUpperCase()+"%'";
				freeText = freeText+ " OR UPPER(product_image_url) LIKE"+" '%"+array[index].toUpperCase()+"%'";
				freeText = freeText+ " OR UPPER(product_deal_url) LIKE"+" '%"+array[index].toUpperCase()+"%'";
				if(index != array.length-1){
					freeText = freeText+" OR ";
				}
			}
		
		}
		return freeText+ " order by product_display_order asc";
	}

	@Transactional(readOnly = true)
	public List<DealDetailsVO> findAllTravelDeals() {
		log.debug("--> findAllTravelDeals");
		log.debug("Query: " + SQLConstants.SELECT_ALL_POPULAR_DEALS);
		List<DealDetailsVO> detailsVos = new ArrayList<DealDetailsVO>();
		try {
			List<Map<String, Object>> rows = getJdbcTemplate().queryForList(
					SQLConstants.SELECT_ALL_POPULAR_DEALS);
			DealDetailsVO dealDetailsVO = null;
			for (Map<String, Object> row : rows) {
				dealDetailsVO = populateDealDetails(row);
				detailsVos.add(dealDetailsVO);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		log.debug("<-- findAllTravelDeals");
		return detailsVos;
	}

	public UserVO authenticateUser(Map<String,String> inputMap) {
		log.debug("--> authenticateUser");
		log.debug("Query: " + SQLConstants.SELECT_USER);
		UserVO userVO = null;
		String userName = inputMap.get("inputEmail");
		String password = inputMap.get("inputPassword");
		String saltedPassword;
		try {
			saltedPassword = SHAHashing.getHashedPassword(password);
			String sql = SQLConstants.SELECT_USER.replace("email",userName).replace("saltedPassword", saltedPassword);
			List<Map<String, Object>> rows = getJdbcTemplate().queryForList(sql);
			if(rows != null && rows.size() > 0){
				for (Map<String, Object> row : rows) {
					userVO = populateUser(row);
				}
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		} 
		log.debug("<-- authenticateUser");
		return userVO;
	}
	
	private UserVO populateUser(Map<String, Object> row) {
		UserVO userVO = new UserVO();
		userVO.setUserId((Integer) row.get("USER_ID"));
		userVO.setRoleId((Integer) row.get("USER_ROLE_ID"));
		userVO.setUserName((String) row.get("USER_NAME"));
		userVO.setUserName((String) row.get("USER_PWD"));
		userVO.setUserName((String) row.get("USER_EMAILID"));
		return userVO;
	}

	public List<UserVO> getUserListExcept(Integer userId) {
		log.debug("--> getUserListExcept");
		log.debug("Query: " + SQLConstants.SELECT_USER_EXCEPT);
		List<UserVO> userVOs = new ArrayList<UserVO>();
		try {			
			List<Map<String, Object>> rows = getJdbcTemplate().queryForList(SQLConstants.SELECT_USER_EXCEPT,userId);
			if(rows != null && rows.size() > 0){
				for (Map<String, Object> row : rows) {
					userVOs.add(populateUser(row));
				}
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		} 
		log.debug("<-- getUserListExcept");
		return userVOs;
	}

	public void updateProduct(Long productId, DealDetailsVO dealDetailsVO) {
		log.debug("--> updateProduct");
		try {
		getJdbcTemplate().update(SQLConstants.UPDATE_QUERY_DEALS_DETAILS,dealDetailsVO.getCategoryId(),dealDetailsVO.getProductName(),dealDetailsVO.getProductDescription(),
				dealDetailsVO.getImageUrl(),dealDetailsVO.getDealUrl(),dealDetailsVO.getVendorName(),dealDetailsVO.getActualPrice(),
				dealDetailsVO.getSalePrice(),dealDetailsVO.getCuponCode(),dealDetailsVO.getStatus(),dealDetailsVO.getHotDeal(),dealDetailsVO.getPopularDeal(),dealDetailsVO.getClearanceDeal(),
				dealDetailsVO.getDisplayOrder(),dealDetailsVO.getUserId(),dealDetailsVO.getUpdatedBy(),dealDetailsVO.getPostedDate(),dealDetailsVO.getUpdatedDate(),productId);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		log.debug("<-- updateProduct");
		
	}
}
