package kr.co.lwan;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	
	@RequestMapping(value = "/star")
	public String test02(HttpServletRequest htRequest, Model model) {
		Integer count= Integer.parseInt(htRequest.getParameter("count"));
		System.out.println("count: " + count);
		
		model.addAttribute("count", count);

		return "test02";
	}
	
	@RequestMapping(value = "/color")
	public String color(HttpServletRequest htRequest, Model model) {
		Integer num1= Integer.parseInt(htRequest.getParameter("num1"));
		Integer num2= Integer.parseInt(htRequest.getParameter("num2"));
		System.out.println("num1: " + num1 + "num2: " + num2);
		
		model.addAttribute("num1", num1);
		model.addAttribute("num2", num2);

		return "color";
	}
}
