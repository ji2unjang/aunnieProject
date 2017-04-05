package com.aunnie.web.service;

import java.util.List;
import com.aunnie.web.dto.CategoryDTO;

public interface CategoryService {
	public List<CategoryDTO> getAll();
	public CategoryDTO getOne(int no);
	public void writeOne(CategoryDTO dto);
	public void modifyOne(CategoryDTO dto);
	public void deleteOne(int no);
}
