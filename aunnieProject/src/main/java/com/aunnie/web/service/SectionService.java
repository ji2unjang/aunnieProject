package com.aunnie.web.service;

import java.util.List;

import com.aunnie.web.dto.SectionDTO;

public interface SectionService {
	public List<SectionDTO> getAll();
	public SectionDTO getOne(int no);
	public void writeOne(SectionDTO dto);
	public void modifyOne(SectionDTO dto);
	public void deleteOne(int no);
}
