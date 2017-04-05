package com.aunnie.web.dao;

import java.util.List;

import com.aunnie.web.dto.CategoryDTO;

public interface CategoryDAO {
	public List<CategoryDTO> selectAll();
	public CategoryDTO selectOne(int no);
	public void insertOne(CategoryDTO dto);
	public void updateOne(CategoryDTO dto);
	public void deleteOne(int no);
}
