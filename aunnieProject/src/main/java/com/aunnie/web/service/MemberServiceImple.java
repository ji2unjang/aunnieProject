package com.aunnie.web.service;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.aunnie.web.Criteria;
import com.aunnie.web.DatePick;
import com.aunnie.web.dao.MemberDAO;
import com.aunnie.web.dto.MemberDTO;
@Service("memberService")
public class MemberServiceImple implements MemberService{

	@Resource(name="memberDAO")
	private MemberDAO dao;
	
	@Override
	public List<MemberDTO> getAll() {
		return dao.selectAll();
	}

	@Override
	public MemberDTO readOne(int no) {
		return dao.selectOne(no);
	}

	@Override
	public void writeOne(MemberDTO dto) {
		dao.insertOne(dto);
	}

	@Override
	public void modifyOne(MemberDTO dto) {
		dao.updateOne(dto);
	}

	@Override
	public void removeOne(int no) {
		dao.deleteOne(no);
	}

	@Override
	public List<MemberDTO> getPage(Criteria cri) {
		return dao.selectPage(cri);
	}

	@Override
	public int totalCount() {
		return dao.getTotal();
	}
	public MemberDTO findUser(MemberDTO memberdto) {
		return dao.findUser(memberdto);
	}

	@Override
	public List<MemberDTO> readCal(DatePick dp) {
		return dao.selectCal(dp);
	}

	

}
