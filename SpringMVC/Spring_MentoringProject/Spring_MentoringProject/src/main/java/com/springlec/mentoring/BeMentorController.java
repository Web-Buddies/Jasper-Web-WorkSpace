package com.springlec.mentoring;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springlec.mentoring.dao.IDao;

@Controller
public class BeMentorController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("userBeMentor")
	public String visitorpage(Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("list",dao.adminMajorListDao());
		
		return "visitorPage";
	}
	
	
	
	
	
	
	
}
