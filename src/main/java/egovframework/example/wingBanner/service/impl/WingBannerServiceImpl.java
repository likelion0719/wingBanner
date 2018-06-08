package egovframework.example.wingBanner.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.wingBanner.service.WingBannerService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service("wingBannerService")
public class WingBannerServiceImpl implements WingBannerService{
	
	@Resource(name="wingBannerMapper")
	private WingBannerMapper wingBannerMapper;
	@Override
	public List<EgovMap> selectWingBannerList() throws Exception {
		// TODO Auto-generated method stub
		return wingBannerMapper.selectWingBannerList();
	}

}
