package com.spring.finalcrawling.service;

import java.util.List;

import com.spring.finalcrawling.model.DataVO;
import com.spring.finalcrawling.model.DbdataVO;

public interface IDataService {
	
	// python에 사용자 정보 넘기기
	String dataSend(DataVO vo);
	
	// 해당 시의 db에서 선택한 여행 유형 가져오기
	List<DbdataVO> selectLocation(DataVO vo, String result);

}
