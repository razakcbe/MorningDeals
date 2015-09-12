/**
 * 
 */
package com.jrt.deals.utils;

import java.math.BigDecimal;
import java.util.Map;

import com.jrt.deals.vo.DealDetailsVO;
import com.jrt.deals.vo.UserVO;

/**
 * @author JRT
 *
 */
public class DealUtils {

	/**
	 * 
	 * @param params
	 * @return
	 */
	public static DealDetailsVO getDealDetailsVO(Map<String,String> params){
		DealDetailsVO dealDetailsVO = new DealDetailsVO();
		String pname = params.get("pname");
		String pmessage = params.get("pmessage");
		String imageURL = params.get("imageURL");
		String destinationURL = params.get("destinationURL");
		String categoryId = params.get("categoryId");
		String vname = params.get("vname");
		String aprice = params.get("aprice");
		String sprice = params.get("sprice");
		String coupon = params.get("coupon");
		String hotdealsid = params.get("hotdealsid");
		String populardealsid = params.get("populardealsid");
		String clearncesaleid = params.get("clearncesaleid");
		dealDetailsVO.setProductName(pname);
		dealDetailsVO.setProductDescription(pmessage);
		dealDetailsVO.setImageUrl(imageURL);
		dealDetailsVO.setDealUrl(destinationURL);
		dealDetailsVO.setCategoryId(new Integer(categoryId));
		dealDetailsVO.setVendorName(vname);
		dealDetailsVO.setActualPrice(new BigDecimal(aprice));
		dealDetailsVO.setSalePrice(new BigDecimal(sprice));
		dealDetailsVO.setCuponCode(coupon);
		dealDetailsVO.setHotDeal(hotdealsid);
		dealDetailsVO.setPopularDeal(populardealsid);
		dealDetailsVO.setClearanceDeal(clearncesaleid);
		return dealDetailsVO;
	}

	public static UserVO getUserVO(Map<String, String> allRequestParams) {
		UserVO userVO = new UserVO();
		String emailId = allRequestParams.get("email");
		userVO.setUserName(emailId);
		userVO.setUserEmailId(emailId);
		userVO.setRoleId(1002);
		userVO.setUserPwd("dummy");
		return userVO;
	}
}
