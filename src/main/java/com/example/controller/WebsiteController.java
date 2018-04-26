package com.example.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.Author;
import com.example.model.Carousel;
import com.example.model.Case;
import com.example.model.Category;
import com.example.model.Company;
import com.example.model.CompanyCraft;
import com.example.model.CompanyService;
import com.example.model.SplitImage;
import com.qiniu.util.StringUtils;

/** * @author  david:
 * @date 创建时间：2016年5月27日 下午3:12:58
 * @version 1.0
 * @parameter
  * @since 
 * @return 
 */
@RestController
public class WebsiteController extends BaseController{

	@RequestMapping("/")
	public ModelAndView homePage(){
		ModelAndView mav = new ModelAndView();
		Company company = companyRep.findOne(1);
		mav.addObject("company", company);
		
		List<Author> list = (List<Author>) authorRep.findAll();
		mav.addObject("authors", list);
		mav.addObject("authorCount", (list.size()-1)/3+1);
		
		List<CompanyService> serviceList = (List<CompanyService>) companyServiceRep.findAll();
		mav.addObject("companyServices", serviceList);
		mav.addObject("csCount", (serviceList.size()-1)/3+1);
		
		List<CompanyCraft> craftList = (List<CompanyCraft>) companyCraftRep.findAll();
		mav.addObject("companyCrafts", craftList);
		mav.addObject("ccCount", (craftList.size()-1)/3+1);
		
		List<Case> caseList = (List<Case>) caseRep.findAll();
		mav.addObject("cases", caseList);
		mav.addObject("caseCount", (caseList.size()-1)/3+1);
		
		
		List<SplitImage> splitImagelist = (List<SplitImage>) splitImageRep.findAll();
		mav.addObject("splitImages", splitImagelist);
		
		List<Carousel> carousellist = (List<Carousel>) carouselRep.findAllByOrderNum();
		String images="";
		for(Carousel carousel:carousellist){
			if(StringUtils.isNullOrEmpty(carousel.getImage())){
				images+="img/hero-bg.jpg;";
			}else{
				images+=carousel.getImage()+";";
			}
		}
		if(StringUtils.isNullOrEmpty(carousellist.get(0).getImage())){
			mav.addObject("firstImage", "img/hero-bg.jpg;");
		}else{
			mav.addObject("firstImage", carousellist.get(0).getImage());
		}
		
		images = images.substring(0, images.length()-1);
		mav.addObject("carousels", carousellist);
		mav.addObject("images", images);
		mav.setViewName("/website/homePage");
		return mav;
	}
	
	
	@RequestMapping("/authors")
	public ModelAndView authors(String search){
		ModelAndView mav = new ModelAndView();
		List<Author> list = new ArrayList<Author>();
		if(StringUtils.isNullOrEmpty(search)){
			 list= (List<Author>) authorRep.findAll();
		}else{
			list= (List<Author>) authorRep.searchByName("%"+search+"%");
		}
		Company company = companyRep.findOne(1);
		mav.addObject("company", company);
		mav.addObject("authors", list);
		mav.setViewName("/website/authors");
		return mav;
	}
	
	
	@RequestMapping("/cases")
	public ModelAndView cases(String category,String author){
		ModelAndView mav = new ModelAndView();
		List<Case> list =new ArrayList<Case>();
		if(StringUtils.isNullOrEmpty(category)&& StringUtils.isNullOrEmpty(author)){	
			list =(List<Case>) caseRep.findAll();
		}else if(!StringUtils.isNullOrEmpty(category) && StringUtils.isNullOrEmpty(author)){
			//根据种类
			list= (List<Case>) caseRep.searchByCategory(Integer.parseInt(category));
		}else{
			//根据设计师
			list= (List<Case>) caseRep.searchByAuthor(Integer.parseInt(author));
		}
		
		//分类大类
		List<Category> categorys = (List<Category>) categoryRep.getParent();	
		List<Map<String,Object>> mapList = new ArrayList<Map<String,Object>>();
		for(Category c:categorys){
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("parent", c);
			List<Category> seconds = (List<Category>) categoryRep.getByParent(c.getId());
			map.put("seconds", seconds);
			mapList.add(map);		
		}		
		mav.addObject("categorys", mapList);
		Company company = companyRep.findOne(1);
		mav.addObject("company", company);
		List<Author> authors =(List<Author>) authorRep.findAll();
		mav.addObject("authors", authors);
		mav.addObject("cases", list);
		mav.setViewName("/website/cases");
		return mav;
	}
	
	/**
	 * 设计师详情
	 * 方法功能说明
	 * 创建时间 2017年4月9日 下午5:18:58
	 * 开发者 david
	 * @参数： @param id
	 * @参数： @return	
	 * @return： ModelAndView
	 */
	@RequestMapping("/author")
	public ModelAndView author(String id){
		ModelAndView mav = new ModelAndView();
		Author author = authorRep.findOne(Integer.parseInt(id));
		mav.addObject("author", author);
		Company company = companyRep.findOne(1);
		mav.addObject("company", company);
		
		//所有设计师的案列图片
		List<Case> cases = (List<Case>) caseRep.searchByAuthor(author.getId());
		mav.addObject("cases", cases);
		
		//其他6个 随机设计师图片		
		List<Author> randList = (List<Author>) authorRep.randAuthors();
		mav.addObject("randList", randList);
		
		mav.setViewName("/website/author");
		return mav;
	}
	
	
	/**
	 * 设计师详情
	 * 方法功能说明
	 * 创建时间 2017年4月9日 下午5:18:58
	 * 开发者 david
	 * @参数： @param id
	 * @参数： @return	
	 * @return： ModelAndView
	 */
	@RequestMapping("/case")
	public ModelAndView caseDetail(String id){
		ModelAndView mav = new ModelAndView();
		Case object = caseRep.findOne(Integer.parseInt(id));
		mav.addObject("case", object);
		Company company = companyRep.findOne(1);
		mav.addObject("company", company);
		//其他6个 随机案例		
		List<Case> randList = (List<Case>) caseRep.randCases();
		mav.addObject("randList", randList);
		mav.setViewName("/website/case");
		return mav;
	}
	
	
	/**
	 * 获取随机的六个设计师
	 * 方法功能说明
	 * 创建时间 2017年4月16日 下午4:55:20
	 * 开发者 david
	 * @参数： @return	
	 * @return： Map<String,Object>
	 */
	@ResponseBody
	@RequestMapping(value="/getSixAuthors")
	public Map<String,Object> getSixAuthors(){
		Map<String,Object> map = new HashMap<String,Object>();
		List<Author> list = (List<Author>) authorRep.randAuthors();
		map.put("authors", list);
		return map;		
	}
	
	
	
	@RequestMapping("/caseImage")
	public ModelAndView caseImage(String image){
		ModelAndView mav = new ModelAndView();
		mav.addObject("image", image);
		Company company = companyRep.findOne(1);
		mav.addObject("company", company);
		mav.setViewName("/website/caseImage");
		return mav;
	}
}
