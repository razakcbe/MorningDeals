package com.jrt.deals.dao;

import java.util.List;

import com.jrt.deals.vo.DealDetailsVO;
import com.jrt.deals.vo.UserVO;


public interface IDealsDetailsDao {
	public void insert(DealDetailsVO detailsVO);
	public void update(DealDetailsVO detailsVO);
	public void delete(final long userId);
	public DealDetailsVO findById(final long dealId);
	public List<DealDetailsVO> findAll();
	public List<DealDetailsVO> findDealsByCategory(Long long1);
	public List<DealDetailsVO> findTopDeals();
	public List<DealDetailsVO> findRelatedDeals(String productId);
	public void insertUser(UserVO userVO);
}
