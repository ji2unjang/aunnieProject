package com.aunnie.web.control;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.aunnie.web.dto.MemberDTO;
import com.aunnie.web.service.MemberService;

//return : view x , data 
@RestController
public class RestMemberController {

	@Resource(name="memberService")
	private MemberService service;
	
	@RequestMapping("/searchMemberNo")
	@ResponseBody
	public List<MemberDTO> search(@RequestParam(name="no") int no){
		System.out.println("no::"+no);
		List<MemberDTO> list= new ArrayList<>();
		list.add(service.readOne(no));
		return list;
	}
}
