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
import tw.fun1314.app.entity.MarathonType;
import tw.fun1314.app.service.MailService;
import tw.fun1314.app.service.MarathonService;
import tw.fun1314.app.vo.AjaxResponse;

@Slf4j
@Controller
@RequestMapping("/marathon")
public class MarathonController {
	
	@Autowired
	private MailService mailService;
	
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
//				if(memberWCount > 3) {
//					throw new Exception("競賽組女生報名不得超過 3 人");
//				}
				
				if(memberMCount > 7) {
					throw new Exception("競賽組男生報名不得超過 7 人");
				}
			}
			
			try {
				MarathonTeam checkDuplicateTeam = marathonService.getByTeamName(form.getTeamName());
				if(checkDuplicateTeam != null && checkDuplicateTeam.getId() > 0) {
					throw new Exception("目前資料庫已經有相同隊名，<br/>若不是重複報名，請修改隊名。");
				}
			} catch(Exception ex) {
				throw new Exception("目前資料庫已經有相同隊名，<br/>若不是重複報名，請修改隊名。");
			}
			
			
		
			marathonService.insert(form);
			
			StringBuffer mailContent = new StringBuffer();
			
			mailContent.append("<html>");
			mailContent.append("<body>");
			mailContent.append("<h1>恭喜您已經成功報名 2017台大EMBA校園馬拉松 - 1314Fun開跑</h1>");
			mailContent.append("<h3>報名資訊如下，若有任何問題，請再發信至 student@emba.ntu.edu.tw 留下您的問題、姓名及聯絡電話後，大會相關負責人會儘快與您聯繫!!</h3>");
			mailContent.append("<table border='1'>");
			
			mailContent.append("<tr><td>隊名</td><td>").append(form.getTeamName()).append("</td></tr>");
			mailContent.append("<tr><td>隊長</td><td>").append(form.getLeaderName()).append("</td></tr>");
			mailContent.append("<tr><td>聯絡地址</td><td>").append(form.getAddress()).append("</td></tr>");
			mailContent.append("<tr><td>聯絡電話</td><td>").append(form.getPhone()).append("</td></tr>");			
			mailContent.append("<tr><td>聯絡Email</td><td>").append(form.getEmail()).append("</td></tr>");
			if(MarathonCategory.PRO == form.getCategory()) {
				mailContent.append("<tr><td>參賽項目</td><td>").append("競賽組").append("</td></tr>");
			} else if(MarathonCategory.HAPPY == form.getCategory()) {
				mailContent.append("<tr><td>參賽項目</td><td>").append("歡樂組").append("</td></tr>");
			} else {
				mailContent.append("<tr><td>參賽項目</td><td>").append("異常 *** 請洽大會").append("</td></tr>");
			}
			
			if(MarathonType.TEACHER == form.getType()) {
				mailContent.append("<tr><td>參加組別</td><td>").append("教職員工/學生組 ").append("</td></tr>");
			} else if(MarathonType.ALUMNI == form.getType()) {
				mailContent.append("<tr><td>參加組別</td><td>").append("校友組 ").append("</td></tr>");
			} else if(MarathonType.GUEST == form.getType()) {
				mailContent.append("<tr><td>參加組別</td><td>").append("來賓組 ").append("</td></tr>");
			} else {
				mailContent.append("<tr><td>參加組別</td><td>").append("異常 *** 請洽大會").append("</td></tr>");
			}
			
			mailContent.append("<tr><td>隊員名單</td><td>");
			for(int i=1; i<10; i++) {
				if(StringUtils.isNotEmpty(BeanUtils.getSimpleProperty(form, "memberNameW"+i))){
					mailContent.append(BeanUtils.getSimpleProperty(form, "memberNameW"+i) +"-"+ BeanUtils.getSimpleProperty(form, "memberClassW"+i)+"<br/>");
				}
			}
			
			for(int i=1; i<10; i++) {
				if(StringUtils.isNotEmpty(BeanUtils.getSimpleProperty(form, "memberNameM"+i))){
					mailContent.append(BeanUtils.getSimpleProperty(form, "memberNameM"+i) +"-"+ BeanUtils.getSimpleProperty(form, "memberClassM"+i)+"<br/>");
				}
			}
			mailContent.append("</td></tr>");
			
			
			mailContent.append("<tr><td>匯款帳號</td><td>").append(form.getPayAccount()).append("</td></tr>");
			mailContent.append("<tr><td>匯款姓名</td><td>").append(form.getPayName()).append("</td></tr>");
			mailContent.append("<tr><td>匯款金額</td><td>").append(form.getPayAmount()).append("</td></tr>");
			
			
			mailContent.append("</table>");
			mailContent.append("</body>");
			mailContent.append("</html>");
			
			mailService.sendMail(mailContent.toString(), form.getEmail());
			
			
			ajaxResponse.setData(form);
		} catch (Exception e) {
			
			ajaxResponse.addMessage(e.getMessage());
		}

		return ajaxResponse; //response;
	}
	
}
