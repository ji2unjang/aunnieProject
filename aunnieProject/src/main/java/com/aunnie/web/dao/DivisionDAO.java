package com.aunnie.web.dao;

import java.util.List;

import com.aunnie.web.dto.DivisionDTO;

public interface DivisionDAO {
	public List<DivisionDTO> selectAll();
	public List<DivisionDTO> selectByCategory(int cno);
	public DivisionDTO selectOne(int no);
	public void insertOne(DivisionDTO dto);
	public void updateOne(DivisionDTO dto);
	public void deleteOne(int no);
}
