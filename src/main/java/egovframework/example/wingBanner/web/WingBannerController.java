package egovframework.example.wingBanner.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.wingBanner.service.WingBannerService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class WingBannerController {
	
	@Resource(name="wingBannerService")
	private WingBannerService wingBannerService;
	
	@RequestMapping(value = "/wingBanner.do")
	public String wingBanner(ModelMap model) throws Exception {
		
		List<EgovMap> wingBannerList = wingBannerService.selectWingBannerList();
		model.addAttribute("wingBannerList",wingBannerList);
		return "wingBanner/wingBanner.tiles";
	}
}
