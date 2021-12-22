package com.spring.finalcrawling.service;

import java.util.List;

import com.spring.finalcrawling.model.DataVO;
import com.spring.finalcrawling.model.DbdataVO;

public interface IDataService {
	
	// python�� ����� ���� �ѱ��
	String dataSend(DataVO vo);
	
	// �ش� ���� db���� ������ ���� ���� ��������
	List<DbdataVO> selectLocation(DataVO vo, String result);

}
