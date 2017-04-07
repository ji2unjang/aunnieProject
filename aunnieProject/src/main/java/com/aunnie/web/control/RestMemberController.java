package com.aunnie.web.control;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.aunnie.web.Criteria;
import com.aunnie.web.DatePick;
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
	@RequestMapping(value="/changePagination",method=RequestMethod.POST)
	@ResponseBody
	public Criteria cri(@RequestParam(name="length") int length,@RequestParam(name="page",defaultValue="1") int page){

		Criteria cri = new Criteria();
		cri.setPage(page);
		cri.setPerPageNum(10);
		cri.setTotalCount(length);
		return cri;
	}
	@RequestMapping("/server02")
	@ResponseBody
	public List<MemberDTO> cal(
			@RequestParam(name="s") String startDate,
			@RequestParam(name="e") String endDate){
		
		System.out.println("s::"+startDate);
		System.out.println("e::"+endDate);
		List<MemberDTO> list= service.readCal(new DatePick(startDate, endDate));
		return list;
	}
}
