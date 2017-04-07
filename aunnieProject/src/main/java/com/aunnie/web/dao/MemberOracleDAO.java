package com.aunnie.web.dao;

import java.util.Date;
import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.aunnie.web.Criteria;
import com.aunnie.web.DatePick;
import com.aunnie.web.dto.MemberDTO;


@Repository("memberDAO")
public class MemberOracleDAO implements MemberDAO{
	
	@Autowired
	private SqlSession session;
	private final String namespace="com.aunnie.member";

	@Override
	public List<MemberDTO> selectAll() {
		return session.selectList(namespace+".selectAll");
	}

	@Override
	public MemberDTO selectOne(int no) {
		return session.selectOne(namespace+".selectOne",no);
	}
	
	@Override
	public void insertOne(MemberDTO dto) {
		session.insert(namespace+".insertOne",dto);
	}

	@Override
	public void updateOne(MemberDTO dto) {
		session.update("com.aunnie.member.updateOne",dto);
	}

	@Override
	public void deleteOne(int no) {
		session.update(namespace+".deleteOne",no);
	}

	@Override
	public List<MemberDTO> selectPage(Criteria cri){
		return session.selectList(namespace+".selectPage",cri);
	}

	@Override
	public int getTotal() {
		return session.selectOne(namespace+".getCount");
	}
	public MemberDTO findUser(MemberDTO memberDto) {
		return session.selectOne(namespace+".findUser", memberDto);
	}
	@Override
	public List<MemberDTO> selectCal(DatePick dp) {
		return session.selectList(namespace+".selectCal", dp);
	}
}
