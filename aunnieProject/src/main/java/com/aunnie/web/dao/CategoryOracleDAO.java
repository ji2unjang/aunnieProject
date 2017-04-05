package com.aunnie.web.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.aunnie.web.dto.CategoryDTO;

@Repository("categoryDAO")
public class CategoryOracleDAO implements CategoryDAO{

	@Autowired
	private SqlSession session;
	private String namespace="com.aunnie.category";
	
	@Override
	public List<CategoryDTO> selectAll() {
		return session.selectList(namespace+".selectAll");
	}

	@Override
	public CategoryDTO selectOne(int no) {
		return session.selectOne(namespace+".selectOne",no );
	}

	@Override
	public void insertOne(CategoryDTO dto) {
		session.insert(namespace+".insertOne", dto);
	}

	@Override
	public void updateOne(CategoryDTO dto) {
		session.update(namespace+".updateOne", dto);
	}

	@Override
	public void deleteOne(int no) {
		session.delete(namespace+".deleteOne", no);
	}
}
