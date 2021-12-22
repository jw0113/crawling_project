package com.spring.finalcrawling;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.finalcrawling.model.DataVO;
import com.spring.finalcrawling.model.DbdataVO;
import com.spring.finalcrawling.service.IDataService;

@Controller
public class HomeController {
	
	@Autowired
	private IDataService idataservice;
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	// 메인 화면
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "home";
	}
	
	// 사용자 정보를 받음
	@RequestMapping(value = "/dataget", method = RequestMethod.POST)
	public String dataget(DataVO vo, Model model) {
		
		System.out.println("vo : " + vo.toString());
		
		// 사용자 정보를 보내기
		String result = idataservice.dataSend(vo);
		
		// 해당 시의 db에서 선택한 여행 유형 가져오기
		List<DbdataVO> location = idataservice.selectLocation(vo,result);
		model.addAttribute("si", result);
		model.addAllAttributes(location);
		
		return "result";
		
	}
	
}
