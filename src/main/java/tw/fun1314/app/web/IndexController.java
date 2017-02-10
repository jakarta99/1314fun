package tw.fun1314.app.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping(value={"","/"})
	public String index() {
		return "index";
	}
	
	@RequestMapping(value="/main")
	public String mainContent() {
		return "main";
	}
	
	@RequestMapping(value="/test")
	public String test() {
		return "test";
	}

}
