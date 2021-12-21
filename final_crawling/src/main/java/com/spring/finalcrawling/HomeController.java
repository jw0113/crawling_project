package com.spring.finalcrawling;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@Autowired
	private IDataService idataservice;
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	// ���� ȭ��
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "home";
	}
	
	// ����� ������ ����
	@RequestMapping(value = "/dataget", method = RequestMethod.POST)
	public void dataget(DataVO vo) {
		
		System.out.println("vo : " + vo.toString());
		
		// ����� ������ ������
		String result = idataservice.dataSend(vo);
		
	}
	
}
