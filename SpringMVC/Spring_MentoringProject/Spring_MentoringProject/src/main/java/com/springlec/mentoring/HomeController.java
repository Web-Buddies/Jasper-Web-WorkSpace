package com.springlec.mentoring;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springlec.mentoring.dao.IDao;

/**
 * Handles requests for the application home page.
 *  홈에 관련된 모든 컨트롤러
 */
@Controller
public class HomeController {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	
	@RequestMapping("home")
	public String visitorpage(Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("list",dao.adminMajorListDao());
		
		return "visitorPage";
	}
	
	@RequestMapping("visitorShowHelpPage")
	public String visitorShowHelpPage() {
		
		
		return "visitorShowHelpPage";
	}
	
	@RequestMapping("userSignUpPage")
	public String userSignUpPage() {
		
		
		return "userSignUpPage";
	}
	
	
	
	
}
