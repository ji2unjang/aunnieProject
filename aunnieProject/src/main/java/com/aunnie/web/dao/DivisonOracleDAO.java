package com.aunnie.web.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.aunnie.web.dto.DivisionDTO;

@Repository("divisionDAO")
public class DivisonOracleDAO implements DivisionDAO{

	@Autowired
	private SqlSession session;
	private String namespace="com.aunnie.division";
	@Override
	public List<DivisionDTO> selectAll() {
		return session.selectList(namespace+".selectAll");
	}

	@Override
	public DivisionDTO selectOne(int no) {
		return session.selectOne(namespace+".selectOne",no );
	}

	@Override
	public void insertOne(DivisionDTO dto) {
		session.insert(namespace+".insertOne", dto);
	}

	@Override
	public void updateOne(DivisionDTO dto) {
		session.update(namespace+".updateOne", dto);
	}

	@Override
	public void deleteOne(int no) {
		session.delete(namespace+".deleteOne", no);
	}

	@Override
	public List<DivisionDTO> selectByCategory(int cno) {
		return session.selectList(namespace+".selectByCategory", cno);
	}
	
}
