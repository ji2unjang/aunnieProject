package com.aunnie.web.control;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.aunnie.web.Criteria;
import com.aunnie.web.dto.MemberDTO;
import com.aunnie.web.service.MemberService;

@Controller
public class MemberController {

	@Resource(name = "memberService")
	private MemberService service;
	
	@RequestMapping("/memberList")
	public ModelAndView list(@RequestParam(name="pno",defaultValue="1") int pno) {
		Criteria cri = new Criteria();
		// # of row per page : 10
		// pno : current page
		cri.setPerPageNum(10);
		cri.setPage(pno);
		cri.setTotalCount(service.totalCount());
		ModelAndView model = new ModelAndView("admin/members");
		model.addObject("list", service.getPage(cri));
		model.addObject("criteria",cri);
		return model;

	}
	@RequestMapping("/adminLog")
	public String adminLogin(){
		return "login";
	}
	@RequestMapping("/sign")
	public String sing() {
		return "sign";
	}

	@RequestMapping("/signOk")
	public String signOk(@ModelAttribute("dto") MemberDTO dto, HttpServletRequest req) {
		service.writeOne(dto);
		return "redirect:memberList";
	}

	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	
	@RequestMapping("/loginOk")
	public String loginOk(MemberDTO memberdto, Model model){
		MemberDTO resultMemberdto = service.findUser(memberdto);
		if(resultMemberdto != null && !"".equals(resultMemberdto)){
			model.addAttribute("list", resultMemberdto);
			return "loginOk";
		}else{
			return "login";
		}
	}
}
