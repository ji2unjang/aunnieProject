package com.aunnie.web.dao;

import java.util.List;

import com.aunnie.web.dto.SectionDTO;

public interface SectionDAO {
	public List<SectionDTO> selectAll();
	public SectionDTO selectOne(int no);
	public void insertOne(SectionDTO dto);
	public void updateOne(SectionDTO dto);
	public void deleteOne(int no);
}
