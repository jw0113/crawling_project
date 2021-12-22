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
		String si_index[] = new String[] { "11.0","21.0","22.0","23.0","25.0","24.0","26.0","31.0","32.0","33.0","34.0","37.0","38.0","35.0","36.0","39.0"};
		String si_name[] = new String[] {"Seoul", "Busan","Daegu","Incheon","Daejeon","Gwangju","Ulsan","Gyeonggi_do","Gangwon_do","Chungcheongbuk_do","Chungcheongnam_do","Gyeongsangbuk_do","Gyeongsangnam_do","Jeollabuk_do","Jeollanam_no","Jeju_island"};
		
		String si_dbname = null;
		// 어떤 시로 나왔는지
		for(int i=0; i<si_index.length;i++) {
			if(si_index[i].equals(result)) {
				si_dbname = si_name[i];
			}
		}
		// 해당 시의 db에서 선택한 여행 유형 가져오기
		List<DbdataVO> dbdata = idataservice.selectLocation(vo,result);
		model.addAttribute("si", si_dbname);
		model.addAttribute("dbdata",dbdata);
		
		return "result";
		
	}
	
}
