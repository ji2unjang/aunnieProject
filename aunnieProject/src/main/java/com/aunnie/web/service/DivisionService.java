package com.aunnie.web.service;

import java.util.List;

import com.aunnie.web.dto.DivisionDTO;

public interface DivisionService {
	public List<DivisionDTO> getAll();
	public List<DivisionDTO> getByCategory(int cno);
	public DivisionDTO getOne(int no);
	public void writeOne(DivisionDTO dto);
	public void modifyOne(DivisionDTO dto);
	public void deleteOne(int no);
}
