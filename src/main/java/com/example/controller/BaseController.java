package com.example.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import com.example.repository.AuthorRepository;
import com.example.repository.CarouselRepository;
import com.example.repository.CaseRepository;
import com.example.repository.CategoryRepository;
import com.example.repository.CompanyCraftRepository;
import com.example.repository.CompanyRepository;
import com.example.repository.CompanyServiceRepository;
import com.example.repository.MessageRepository;
import com.example.repository.SplitImageRepository;
import com.example.repository.UserRepository;
import com.example.utils.DateEditor;
import com.example.utils.DoubleEditor;
import com.example.utils.FloatEditor;
import com.example.utils.IntegerEditor;
import com.example.utils.LongEditor;



/** * @author  david:
 * @date 创建时间：2016年6月4日 下午4:20:11
 * @version 1.0
 * @parameter
  * @since 
 * @return 
 */
public class BaseController {

	@Autowired
	public UserRepository userRep;
	
	@Autowired
	public CompanyRepository companyRep;
	
	@Autowired
	public AuthorRepository authorRep;
	
	@Autowired
	public CompanyServiceRepository companyServiceRep;
	
	@Autowired
	public CompanyCraftRepository companyCraftRep;
	
	@Autowired
	public MessageRepository messageRep;
	
	@Autowired
	public CaseRepository caseRep;
	
	@Autowired
	public CarouselRepository carouselRep;
	
	@Autowired
	public CategoryRepository categoryRep;
	
	@Autowired
	public SplitImageRepository splitImageRep;
	
	@Autowired
	protected HttpServletRequest req;
	
	@Autowired
	protected HttpServletResponse res;

    /**
     * Inits the binder.
     *
     * @param binder the binder
     */
    @InitBinder  
    protected  void initBinder(WebDataBinder binder) {  
        binder.registerCustomEditor(Date.class, new DateEditor()); 
        binder.registerCustomEditor(long.class, new LongEditor());    
        binder.registerCustomEditor(double.class, new DoubleEditor());    
        binder.registerCustomEditor(float.class, new FloatEditor());
        binder.registerCustomEditor(int.class, new IntegerEditor());
    }
}
