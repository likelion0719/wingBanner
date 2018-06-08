package egovframework.example.wingBanner.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface WingBannerService {

	List<EgovMap> selectWingBannerList() throws Exception;

}
