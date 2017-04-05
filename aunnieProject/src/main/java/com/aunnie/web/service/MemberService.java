package com.aunnie.web.service;

import java.util.List;

import com.aunnie.web.Criteria;
import com.aunnie.web.dto.MemberDTO;

public interface MemberService {
	public List<MemberDTO> getAll();
	public List<MemberDTO> getPage(Criteria cri);
	public MemberDTO readOne(int no);
	public void writeOne(MemberDTO dto);
	public void modifyOne(MemberDTO dto);
	public void removeOne(int no);
	public MemberDTO findUser(MemberDTO memberDto);
	public int totalCount();
}
