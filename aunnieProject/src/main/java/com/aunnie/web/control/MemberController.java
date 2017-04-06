package com.aunnie.web.control;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.aunnie.web.Criteria;
import com.aunnie.web.dto.MemberDTO;
import com.aunnie.web.service.MemberService;

@Controller
public class MemberController {

	@Resource(name = "memberService")
	private MemberService memberService;

	@RequestMapping("/memberList")
	public ModelAndView list(@RequestParam(name="pno",defaultValue="1") int pno) {
		Criteria cri = new Criteria();
		// # of row per page : 10
		// pno : current page
		cri.setPerPageNum(10);
		cri.setTotalCount(memberService.totalCount());
		cri.setPage(pno);
		return new ModelAndView("admin/members", "list", memberService.getPage(cri));
	}
	
	@RequestMapping("/sign")
	public String sing() {

		return "sign";
	}

	@RequestMapping("/signOk")
	public String signOk(@ModelAttribute("dto") MemberDTO dto, HttpServletRequest req) {

		memberService.writeOne(dto);

		return "redirect:memberList";
	}
	

	
	@RequestMapping("/loginOk")
	@ResponseBody
	public String loginOk(MemberDTO memberdto, Model model){
		
		MemberDTO resultMemberdto = memberService.findUser(memberdto);
		
		if(resultMemberdto != null && !"".equals(resultMemberdto)){
			model.addAttribute("list", resultMemberdto);
			
			return "Y";
		}else{
			return "N";
		}
		
	}

	@RequestMapping("/adminLog")
	public String login(){
		return "admin/adminLogin";
	}
}
