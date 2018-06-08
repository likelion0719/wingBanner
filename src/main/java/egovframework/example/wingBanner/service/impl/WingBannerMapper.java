package egovframework.example.wingBanner.service.impl;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Mapper("wingBannerMapper")
public interface WingBannerMapper {

	List<EgovMap> selectWingBannerList() throws Exception;
	
}
