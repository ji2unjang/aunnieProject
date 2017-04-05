package com.aunnie.web.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.aunnie.web.dao.DivisionDAO;
import com.aunnie.web.dto.DivisionDTO;

@Service("divisionService")
public class DivisionServiceImple implements DivisionService {

	@Resource(name="divisionDAO")
	private DivisionDAO dao;
	@Override
	public List<DivisionDTO> getAll() {
		return dao.selectAll();
	}

	@Override
	public DivisionDTO getOne(int no) {
		return dao.selectOne(no);
	}

	@Override
	public void writeOne(DivisionDTO dto) {
		dao.insertOne(dto);
	}

	@Override
	public void modifyOne(DivisionDTO dto) {
		dao.updateOne(dto);
	}

	@Override
	public void deleteOne(int no) {
		dao.deleteOne(no);
	}

	@Override
	public List<DivisionDTO> getByCategory(int cno) {
		return dao.selectByCategory(cno);
	}

}
