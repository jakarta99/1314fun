package tw.fun1314.app.web;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;
import tw.fun1314.app.entity.MarathonCategory;
import tw.fun1314.app.entity.MarathonTeam;
import tw.fun1314.app.service.MarathonService;
import tw.fun1314.app.vo.AjaxResponse;

@Slf4j
@Controller
@RequestMapping("/marathon")
public class MarathonController {
	
	@Autowired
	private MarathonService marathonService;

	@RequestMapping(method = RequestMethod.GET)
	public String indexPage(Model model) {
		
		return "/marathon/main";
	}
	
	@RequestMapping(value = "/rule", method = RequestMethod.GET)
	public String rulePage(Model model) {
		
		return "/marathon/rule";
	}
	
	@RequestMapping(value = "/map", method = RequestMethod.GET)
	public String mapPage(Model model) {
		
		return "/marathon/map";
	}
	
	@RequestMapping(value = "/sponsor", method = RequestMethod.GET)
	public String sponsorPage(Model model) {
		
		return "/marathon/sponsor";
	}
		
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerPage(Model model) {
		
		return "/marathon/register";
	}
	
	@RequestMapping(value = "/record", method = RequestMethod.GET)
	public String recordPage(Model model) {
		
		return "/marathon/record";
	}
	
	
	@RequestMapping(value = "/register", method = RequestMethod.POST,
	        consumes = MediaType.APPLICATION_JSON_UTF8_VALUE, 
	        produces = {MediaType.APPLICATION_ATOM_XML_VALUE, MediaType.APPLICATION_JSON_VALUE})
	@ResponseBody
	public AjaxResponse insert(final Model model, @RequestBody MarathonTeam form) {
		log.debug("{}", form);
		
		AjaxResponse ajaxResponse = new AjaxResponse();
		
		
		
		try {
			
			// 檢查報名是否為 7-9 人
			int memberWCount = 0;
			int memberMCount = 0;
			int memberCount = 0;
			for(int i=1; i<10; i++) {
				String memberName = BeanUtils.getProperty(form, "memberNameW"+i);
				if(StringUtils.isNotEmpty(memberName)) {
					memberWCount ++;
					memberCount ++;
				}
			}
			for(int i=1; i<10; i++) {
				String memberName = BeanUtils.getProperty(form, "memberNameM"+i);
				if(StringUtils.isNotEmpty(memberName)) {
					memberMCount ++;
					memberCount ++;
				}
			}
			
			if(memberCount < 7) {
				throw new Exception("請至少輸入 7 位比賽選手資料");
			}
			
			if(memberCount > 9) {
				throw new Exception("請最多輸入 9 位比賽選手資料");
			}
			
			if(form.getCategory() == MarathonCategory.PRO) {
				if(memberWCount > 3) {
					throw new Exception("競賽組女生報名不得超過 3 人");
				}
				
				if(memberMCount > 6) {
					throw new Exception("競賽組男生報名不得超過 6 人");
				}
			}
			
		
			marathonService.insert(form);
			
			ajaxResponse.setData(form);
		} catch (Exception e) {
			
			ajaxResponse.addMessage(e.getMessage());
		}

		return ajaxResponse; //response;
	}
	
}
