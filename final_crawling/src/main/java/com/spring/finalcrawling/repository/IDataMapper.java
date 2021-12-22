package com.spring.finalcrawling.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.spring.finalcrawling.model.DbdataVO;

public interface IDataMapper {
	
	// 여행 유형 가져오기
	List<DbdataVO> selectLocation(@Param("dbname") String dbname, @Param("category") int category);
}
