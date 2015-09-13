/**
 * 
 */
package com.jrt.deals.service;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jrt.deals.dao.IDealsDetailsDao;
import com.jrt.deals.vo.DealDetailsVO;
import com.jrt.deals.vo.UserVO;

/**
 * @author Prakasa Totta
 *
 */
@Service("dealsDetailsService")
public class DealsDetailsService {
	private static final Logger log = Logger
			.getLogger(DealsDetailsService.class);
	@Autowired
	private IDealsDetailsDao dealsDetailsDao;

	public void deleteDeal(int id) {
		log.debug("--> deleteCountry");
		dealsDetailsDao.delete(id);
		log.debug("<-- deleteCountry");
	}

	public void insertDeal(DealDetailsVO dealDetailsVO) {
		log.debug("--> insertDeal");
		dealsDetailsDao.insert(dealDetailsVO);
		log.debug("<-- insertDeal");
	}

	public List<DealDetailsVO> findAllDeals() {
		log.debug("--> findAllDeals");
		List<DealDetailsVO> dealDetailsVOList = dealsDetailsDao.findAll();
		log.debug("<-- findAllDeals");
		return dealDetailsVOList;
	}

	public DealDetailsVO findDeal(long dealId) {
		log.debug("--> findDeal");
		DealDetailsVO deal = dealsDetailsDao.findById(dealId);
		log.debug("<-- findDeal");
		return deal;
	}

	public List<DealDetailsVO> findDealsByCategory(String categoryId) {
		log.debug("--> findAllDeals");
		List<DealDetailsVO> dealDetailsVOList = dealsDetailsDao
				.findDealsByCategory(new Long(categoryId));
		log.debug("<-- findAllDeals");
		return dealDetailsVOList;
	}

	public List<DealDetailsVO> findTopDeals() {
		log.debug("--> findTopDeals");
		List<DealDetailsVO> dealDetailsVOList = dealsDetailsDao.findTopDeals();
		log.debug("<-- findTopDeals");
		return dealDetailsVOList;
	}

	public List<DealDetailsVO> findRelatedDeals(String productId) {
		log.debug("--> findRelatedDeals");
		List<DealDetailsVO> dealDetailsVOList = dealsDetailsDao
				.findRelatedDeals(productId);
		log.debug("<-- findRelatedDeals");
		return dealDetailsVOList;
	}

	public void insertUser(UserVO userVO) {
		log.debug("--> insertUser");
		dealsDetailsDao.insertUser(userVO);
		log.debug("--> insertUser");
	}

	public List<DealDetailsVO> findAllHotDeals() {
		log.debug("--> findAllHotDeals");
		List<DealDetailsVO> dealDetailsVOList = dealsDetailsDao.findAllHotDeals();
		log.debug("<-- findAllHotDeals");
		return dealDetailsVOList;
	}

	public List<DealDetailsVO> findAllClearanceDeals() {
		log.debug("--> findAllClearanceDeals");
		List<DealDetailsVO> dealDetailsVOList = dealsDetailsDao.findAllClearanceDeals();
		log.debug("<-- findAllClearanceDeals");
		return dealDetailsVOList;
	}

	public List<DealDetailsVO> findAllTraveleDeals() {
		log.debug("--> findAllTraveleDeals");
		List<DealDetailsVO> dealDetailsVOList = dealsDetailsDao.findAllTravelDeals();
		log.debug("<-- findAllTraveleDeals");
		return dealDetailsVOList;
	}
	
	public boolean authenticateUser(Map<String,String> inputMap){
		log.debug("--> authenticateUser");
		boolean isUserExist = dealsDetailsDao.authenticateUser(inputMap);
		log.debug("<-- authenticateUser");
		return isUserExist;
	}

}
