package tw.fun1314.app.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;
import tw.fun1314.app.entity.MarathonTeam;
import tw.fun1314.app.service.MarathonService;

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
	public MarathonTeam insert(final Model model, @RequestBody MarathonTeam form) {
		log.debug("{}", form);
		MarathonTeam team = new MarathonTeam();
		
		
		try {
			team = marathonService.insert(form);
		} catch (Exception e) {
			team = new MarathonTeam();
		}

		return team; //response;
	}
	
}
