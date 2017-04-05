package com.aunnie.web.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.aunnie.web.dao.CategoryDAO;
import com.aunnie.web.dto.CategoryDTO;
@Service("categoryService")
public class CategoryServiceImple implements CategoryService {

	@Resource(name="categoryDAO")
	private CategoryDAO dao;
	
	@Override
	public List<CategoryDTO> getAll() {
		return dao.selectAll();
	}

	@Override
	public CategoryDTO getOne(int no) {
		return dao.selectOne(no);
	}

	@Override
	public void writeOne(CategoryDTO dto) {
		dao.insertOne(dto);
	}

	@Override
	public void modifyOne(CategoryDTO dto) {
		dao.updateOne(dto);
	}

	@Override
	public void deleteOne(int no) {
		dao.deleteOne(no);
	}

}
