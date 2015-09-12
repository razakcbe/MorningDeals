/**
 * 
 */
package com.jrt.deals.action;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
public class DealsDetailsController {
	private Logger log = Logger.getLogger(DealsDetailsController.class);
	
	@Autowired
	private DealsDetailsService  dealsDetailsService;
		
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView getHome() {
		log.debug("--> getHome");
		ModelAndView model = new ModelAndView("home");
		List<DealDetailsVO> dealDetailsVOs = dealsDetailsService.findAllDeals();
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
		List<DealDetailsVO> dealDetailsVOs = dealsDetailsService.findAllDeals();
		List<DealDetailsVO> topDealDetailsVOs = dealsDetailsService.findTopDeals();
		model.addObject("allDeals", dealDetailsVOs);
		model.addObject("topDeals", topDealDetailsVOs);
		log.debug("<-- showHome:dealDetailsVOs"+dealDetailsVOs);
		return model;
	}

	@RequestMapping(value = "deals", method = RequestMethod.GET)
	public String getDeals(Model model) {
		log.debug("--> getDeals");
		List<DealDetailsVO> dealDetailsVOs = dealsDetailsService.findAllDeals();
		List<DealDetailsVO> topDealDetailsVOs = dealsDetailsService.findTopDeals();
		model.addAttribute("allDeals", dealDetailsVOs);
		model.addAttribute("topDeals", topDealDetailsVOs);
		log.debug("<-- getDeals:dealDetailsVOs"+dealDetailsVOs);
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
		List<DealDetailsVO> dealDetailsVOs = dealsDetailsService.findRelatedDeals(productId);
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
	public String createDeal(Model model,@RequestParam Map<String,String> allRequestParams) {
		log.debug("--> createDeal:"+allRequestParams);
		DealDetailsVO dealDetailsVO = DealUtils.getDealDetailsVO(allRequestParams);
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
		
	@RequestMapping(value = "aboutPage", method = RequestMethod.GET)
	public String showAboutMorningDealsPage(Model model) {
		log.debug("--> aboutMorningDeals");
		model.addAttribute("message","");
		log.debug("<-- aboutMorningDeals");
		return "aboutPage";
	}
	
	@RequestMapping(value = "privacy", method = RequestMethod.GET)
	public String showPrivacyPolicyPage(Model model) {
		log.debug("--> aboutMorningDeals");
		model.addAttribute("message","");
		log.debug("<-- aboutMorningDeals");
		return "privacy";
	}
	
	@RequestMapping(value = "termsofuse", method = RequestMethod.GET)
	public String showTermsOfUsePage(Model model) {
		log.debug("--> aboutMorningDeals");
		model.addAttribute("message","");
		log.debug("<-- aboutMorningDeals");
		return "termsofuse";
	}
	
	@RequestMapping(value = "contactus", method = RequestMethod.GET)
	public String showContactUsPage(Model model) {
		log.debug("--> aboutMorningDeals");
		model.addAttribute("message","");
		log.debug("<-- aboutMorningDeals");
		return "contactus";
	}
	
	@RequestMapping(value = "advertise", method = RequestMethod.GET)
	public String showAdvertisePage(Model model) {
		log.debug("--> aboutMorningDeals");
		model.addAttribute("message","");
		log.debug("<-- aboutMorningDeals");
		return "advertise";
	}
}
