package kr.co.lwan;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import bean.Member;

@Controller
public class MembershipController {

	@RequestMapping(value = "/member")
	public String member(Member member, HttpServletRequest htRequest, Model model) {
		String num = htRequest.getParameter("num");

		model.addAttribute("num", num);
		model.addAttribute(member);

		return "member";
	}
	
	@RequestMapping("/membership")
	public String membership() {
		
		return "membership";
	}
	
	@RequestMapping("/join")
	public String join() {
		return "membershipJoin";
	}

	@RequestMapping(value = "/membershipOk")
	public String membership(HttpServletRequest htRequest, Model model) {
		String id = htRequest.getParameter("id");
		String pw = htRequest.getParameter("pw");
		String name = htRequest.getParameter("name");

		System.out.println("id: " + id);
		System.out.println("pw: " + pw);
		System.out.println("name: " + name);

		model.addAttribute("id", id);
		model.addAttribute("pw", pw);
		model.addAttribute("name", name);

		return "membershipComplete";
	}
}
