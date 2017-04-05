package com.aunnie.web.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.aunnie.web.dto.SectionDTO;
@Repository("sectionDAO")
public class SectionOracleDAO implements SectionDAO {

	@Autowired
	private SqlSession session;
	private String namespace="com.aunnie.section";
	
	@Override
	public List<SectionDTO> selectAll() {
		return session.selectList(namespace+".selectAll");
	}

	@Override
	public SectionDTO selectOne(int no) {
		return session.selectOne(namespace+".selectOne",no);
	}

	@Override
	public void insertOne(SectionDTO dto) {
		session.insert(namespace+".insertOne", dto);
	}

	@Override
	public void updateOne(SectionDTO dto) {
		session.update(namespace+".updateOne", dto);
	}

	@Override
	public void deleteOne(int no) {
		session.delete(namespace+".deleteOne", no);
	}

}
