/**
 * 
 */
package com.jrt.deals.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.jrt.deals.service.DealsDetailsService;
import com.jrt.deals.utils.DealUtils;
import com.jrt.deals.vo.DealDetailsVO;
import com.jrt.deals.vo.UserVO;

/**
 * @author Prakasa Totta
 *
 */
@Controller
@SessionAttributes("userVO")
public class DealsDetailsController {
	private Logger log = Logger.getLogger(DealsDetailsController.class);
	
	@Autowired
	private DealsDetailsService  dealsDetailsService;
		
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView getHome() {
		log.debug("--> getHome");
		ModelAndView model = new ModelAndView("home");
		List<DealDetailsVO> dealDetailsVOs = dealsDetailsService.findAllActiveDeals();
		List<DealDetailsVO> topDealDetailsVOs = dealsDetailsService.findTopDeals();
		model.addObject("allDeals", dealDetailsVOs);
		model.addObject("topDeals", topDealDetailsVOs);
		log.debug("<-- getHome:dealDetailsVOs"+dealDetailsVOs);
		return model;
	}
	
	@RequestMapping(value = "home", method = RequestMethod.GET)
	public ModelAndView showHome() {
		log.debug("--> showHome");
		ModelAndView model = new ModelAndView("home");
		List<DealDetailsVO> dealDetailsVOs = dealsDetailsService.findAllActiveDeals();
		List<DealDetailsVO> topDealDetailsVOs = dealsDetailsService.findTopDeals();
		model.addObject("allDeals", dealDetailsVOs);
		model.addObject("topDeals", topDealDetailsVOs);
		log.debug("<-- showHome:dealDetailsVOs"+dealDetailsVOs);
		return model;
	}

	@RequestMapping(value = "deals", method = RequestMethod.GET)
	public String getDeals(Model model) {
		log.debug("--> getDeals");
		List<DealDetailsVO> dealDetailsVOs = dealsDetailsService.findAllActiveDeals();
		List<DealDetailsVO> topDealDetailsVOs = dealsDetailsService.findTopDeals();
		model.addAttribute("allDeals", dealDetailsVOs);
		model.addAttribute("topDeals", topDealDetailsVOs);
		log.debug("<-- getDeals:dealDetailsVOs"+dealDetailsVOs);
		return "home";
	}
	
	@RequestMapping(value = "freeTextSearch", method = RequestMethod.GET)
	public String getFreeTextSearch(Model model,@RequestParam("freeSeachText") String freeSeachText) {
		log.debug("--> getFreeTextSearch::"+freeSeachText);
		List<DealDetailsVO> dealDetailsVOs = dealsDetailsService.getFreeTextSearch(freeSeachText);
		List<DealDetailsVO> topDealDetailsVOs = dealsDetailsService.findTopDeals();
		model.addAttribute("allDeals", dealDetailsVOs);
		model.addAttribute("topDeals", topDealDetailsVOs);
		model.addAttribute("searchStr", freeSeachText);
		log.debug("<-- getFreeTextSearch:dealDetailsVOs"+dealDetailsVOs);
		return "home";
	}
	
	@RequestMapping(value = "dealsByCateogry", method = RequestMethod.GET)
	public String getDealsByCategory(Model model,@RequestParam("categoryId") String categoryId ) {
		log.debug("--> getDeals");
		List<DealDetailsVO> dealDetailsVOs =  dealsDetailsService.findDealsByCategory(categoryId);
		model.addAttribute("allDeals", dealDetailsVOs);
		log.debug("<-- getDeals:dealDetailsVOs"+dealDetailsVOs);
		return "home";
	}
	
	@RequestMapping(value = "hotDeals", method = RequestMethod.GET)
	public String getHotDeals(Model model) {
		log.debug("--> getHotDeals");
		List<DealDetailsVO> dealDetailsVOs = dealsDetailsService.findAllHotDeals();
		model.addAttribute("allDeals", dealDetailsVOs);
		log.debug("<-- getHotDeals"+dealDetailsVOs);
		return "home";
	}

	@RequestMapping(value = "productDesc", method = RequestMethod.GET)
	public String getProductDesc(Model model,@RequestParam("productId") String productId ) {
		log.debug("--> getProductDesc");
		DealDetailsVO dealDetailsVO = dealsDetailsService.findDeal(new Long(productId));
		List<DealDetailsVO> dealDetailsVOs = dealsDetailsService.findRelatedDeals(new Long(productId));
		log.debug("dealDetailsVOs::"+dealDetailsVOs.size());
		model.addAttribute("dealDetailsVO", dealDetailsVO);
		model.addAttribute("relatedDeals", dealDetailsVOs);
		log.debug("<-- getProductDesc:"+dealDetailsVO);
		return "productDesc";
	}
	@RequestMapping(value = "cupons", method = RequestMethod.GET)
	public ModelAndView getCupons() {
		log.debug("--> getCupons");
		ModelAndView model = new ModelAndView("home");
		log.debug("<-- getCupons");
		return model;
	}
	
	@RequestMapping(value = "clearanceDeals", method = RequestMethod.GET)
	public String getClearanceDeals(Model model) {
		log.debug("--> getClearanceDeals");
		List<DealDetailsVO> dealDetailsVOs = dealsDetailsService.findAllClearanceDeals();
		model.addAttribute("allDeals", dealDetailsVOs);
		log.debug("<-- getClearanceDeals");
		return "home";
	}

	@RequestMapping(value = "travelDeals", method = RequestMethod.GET)
	public String getTravelDeals(Model model) {
		log.debug("--> travelDeals");
		List<DealDetailsVO> dealDetailsVOs = dealsDetailsService.findAllTraveleDeals();
		model.addAttribute("allDeals", dealDetailsVOs);
		log.debug("<-- travelDeals");
		return "home";
	}

	
	@RequestMapping(value = "postDeal", method = RequestMethod.GET)
	public String postDeal(Model model) {
		log.debug("--> postDeal");
		model.addAttribute("message","");
		log.debug("<-- postDeal");
		return "postDeal";
	}
	
	@RequestMapping(value = "createDeal", method = RequestMethod.POST)
	public String createDeal(Model model,@RequestParam Map<String,String> allRequestParams,HttpServletRequest request) {
		log.debug("--> createDeal:"+allRequestParams);
		DealDetailsVO dealDetailsVO = DealUtils.getDealDetailsVO(allRequestParams);
		UserVO userVO = (UserVO) request.getSession().getAttribute("userVO");
		if(userVO != null){
			if(userVO.isAdminUser()){
				dealDetailsVO.setStatus("A");
			}else{
				dealDetailsVO.setStatus("P");
			}
			dealDetailsVO.setUserId(userVO.getUserId());
		}
		dealsDetailsService.insertDeal(dealDetailsVO);
		model.addAttribute("message", "Thank you for Submitting Deal.We will review and show in the deals!!");
		log.debug("<-- createDeal");
		return getDeals(model);
	}
	
	@RequestMapping(value = "subscribe", method = RequestMethod.POST)
	public String subscribe(Model model,@RequestParam Map<String,String> allRequestParams) {
		log.debug("--> subscribe:"+allRequestParams);
		UserVO userVO = DealUtils.getUserVO(allRequestParams);
		dealsDetailsService.insertUser(userVO);
		model.addAttribute("message", "Thank you for Subscribing. You will receive deals to your given Email!!");
		log.debug("<-- subscribe");
		return getDeals(model);
	}
			
	@RequestMapping(value = "authenticate", method = RequestMethod.POST)
	public String authenticateUser(Model model,@RequestParam Map<String,String> allRequestParams,HttpServletRequest request) {
		String returnStr = "login";
		log.debug("--> authenticateUser:"+allRequestParams);
		UserVO userVO = dealsDetailsService.authenticateUser(allRequestParams);
		log.debug("userVO::"+userVO);
		
		if(userVO != null){
			model.addAttribute("userVO",userVO);
			if(userVO.isAdminUser()){
				List<UserVO> userVOList = dealsDetailsService.getUserListExcept(userVO.getUserId());
				log.debug("userVOList::::::"+userVOList);
				model.addAttribute("userVOList",userVOList);
				returnStr =  "newproduct";
			}else{
				returnStr ="home";
				List<DealDetailsVO> dealDetailsVOs = dealsDetailsService.findAllActiveDeals();
				List<DealDetailsVO> topDealDetailsVOs = dealsDetailsService.findTopDeals();
				model.addAttribute("allDeals", dealDetailsVOs);
				model.addAttribute("topDeals", topDealDetailsVOs);
			}
		}else{
			model.addAttribute("message", "Invalid Login, User Name/Email or Password Invalid");
		}
		log.debug("<-- authenticateUser:returnStr"+returnStr);
		return returnStr;
	}
	
	@RequestMapping(value = "addUser", method = RequestMethod.POST)
	public String addUser(Model model,@RequestParam Map<String,String> allRequestParams,HttpServletRequest request) {
		String returnStr = "login";
		log.debug("--> addUser:"+allRequestParams);
		UserVO userVO = dealsDetailsService.addUser(allRequestParams);
		log.debug("userVO::"+userVO);
		
		if(userVO != null){
			model.addAttribute("userVO",userVO);
			if(userVO.isAdminUser()){
				List<UserVO> userVOList = dealsDetailsService.getUserListExcept(userVO.getUserId());
				log.debug("userVOList::::::"+userVOList);
				model.addAttribute("userVOList",userVOList);
				returnStr =  "newproduct";
			}else{
				returnStr ="home";
				List<DealDetailsVO> dealDetailsVOs = dealsDetailsService.findAllActiveDeals();
				List<DealDetailsVO> topDealDetailsVOs = dealsDetailsService.findTopDeals();
				model.addAttribute("allDeals", dealDetailsVOs);
				model.addAttribute("topDeals", topDealDetailsVOs);
			}
		}
		log.debug("<-- addUser"+returnStr);
		return returnStr;
	}
	
	@RequestMapping(value = "allproducts", method = RequestMethod.GET)
	public String listAllProducts(Model model) {
		log.debug("--> listAllProducts");
		List<DealDetailsVO> dealDetailsVOs = dealsDetailsService.findAllDeals();
		log.debug("dealDetailsVOs::"+dealDetailsVOs);
		model.addAttribute("allDeals", dealDetailsVOs);
		log.debug("<-- listAllProducts");
		return "allproducts";
	}
	
	@RequestMapping(value = "newproduct", method = RequestMethod.GET)
	public String createProduct() {
		log.debug("--> createProduct");
		log.debug("<-- createProduct");
		return "newproduct";
	}
	
	@RequestMapping(value = "updateproduct", method = RequestMethod.GET)
	public String updateProduct(Model model, Integer dealId) {
		log.debug("--> updateProduct");
		DealDetailsVO dealDetailsVO = dealsDetailsService.findDeal(dealId);
		log.debug("dealDetailsVO::"+dealDetailsVO);
		model.addAttribute("dealDetailsVO", dealDetailsVO);
		log.debug("<-- updateProduct");
		return "updateproduct";
	}
	
	@RequestMapping(value = "resetpassword", method = RequestMethod.GET)
	public String resetPassword() {
		log.debug("--> resetPassword");
		log.debug("<-- resetPassword");
		return "resetpassword";
	}
	
	@RequestMapping(value = "aboutPage", method = RequestMethod.GET)
	public String showAboutMorningDealsPage(Model model) {
		log.debug("--> showAboutMorningDealsPage");
		log.debug("<-- showAboutMorningDealsPage");
		return "aboutPage";
	}
	
	@RequestMapping(value = "privacy", method = RequestMethod.GET)
	public String showPrivacyPolicyPage(Model model) {
		log.debug("--> showPrivacyPolicyPage");
		log.debug("<-- showPrivacyPolicyPage");
		return "privacy";
	}
	
	@RequestMapping(value = "termsofuse", method = RequestMethod.GET)
	public String showTermsOfUsePage(Model model) {
		log.debug("--> showTermsOfUsePage");
		log.debug("<-- showTermsOfUsePage");
		return "termsofuse";
	}
	
	@RequestMapping(value = "contactus", method = RequestMethod.GET)
	public String showContactUsPage(Model model) {
		log.debug("--> showContactUsPage");
		log.debug("<-- showContactUsPage");
		return "contactus";
	}
	
	@RequestMapping(value = "advertise", method = RequestMethod.GET)
	public String showAdvertisePage(Model model) {
		log.debug("--> showAdvertisePage");
		log.debug("<-- showAdvertisePage");
		return "advertise";
	}
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String showLoginPage(Model model,@RequestParam Map<String,String> allRequestParams,HttpServletRequest request) {
		log.debug("--> showLoginPage");
		String retunrStr = "login";
		if( allRequestParams.containsKey("usernamesignup")){
			retunrStr = addUser(model, allRequestParams, request);
		}
		log.debug("<-- showLoginPage");
		return retunrStr;
	}
	
	@RequestMapping(value = "createProductAdmin", method = RequestMethod.POST)
	public String createDealByAdmin(Model model,@RequestParam Map<String,String> allRequestParams,HttpServletRequest request) {
		log.debug("--> createDealByAdmin:"+allRequestParams);
		DealDetailsVO dealDetailsVO = DealUtils.getDealDetailsVO(allRequestParams);
		dealDetailsVO.setStatus("A");
		UserVO userVO = (UserVO) request.getSession().getAttribute("userVO");
		if(userVO != null){
			dealDetailsVO.setUserId(userVO.getUserId());
		}
		dealsDetailsService.insertDeal(dealDetailsVO);
		log.debug("<-- createDealByAdmin");
		return createProduct();
	}
	
	@RequestMapping(value = "doadminreview", method = RequestMethod.POST)
	public String doAdminReview(Model model,@RequestParam Map<String,String> allRequestParams,HttpServletRequest request) {
		log.debug("--> doAdminReview:"+allRequestParams);
		Long productId = Long.parseLong(allRequestParams.get("productId"));
		DealDetailsVO dealDetailsVO = DealUtils.getDealDetailsVO(allRequestParams);
		UserVO userVO = (UserVO) request.getSession().getAttribute("userVO");
		if(userVO != null){
			dealDetailsVO.setUserId(userVO.getUserId());
		}
		dealsDetailsService.updateProduct(productId,dealDetailsVO);
		log.debug("<-- doAdminReview");
		return createProduct();
	}

	@ExceptionHandler(Exception.class)
	public ModelAndView handleAllException(Exception ex) {
		ModelAndView model = new ModelAndView("error");
		model.addObject("errorMessage", "Fatal Error, please contact System Administrator!");
		return model;

	}
}
