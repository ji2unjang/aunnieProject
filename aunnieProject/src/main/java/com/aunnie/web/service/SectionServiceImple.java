package com.aunnie.web.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.aunnie.web.dao.SectionDAO;
import com.aunnie.web.dto.SectionDTO;
@Service("sectionService")
public class SectionServiceImple implements SectionService {

	@Resource(name="sectionDAO")
	private SectionDAO dao;
	@Override
	public List<SectionDTO> getAll() {
		return dao.selectAll();
	}

	@Override
	public SectionDTO getOne(int no) {
		return dao.selectOne(no);
	}

	@Override
	public void writeOne(SectionDTO dto) {
		dao.insertOne(dto);
	}

	@Override
	public void modifyOne(SectionDTO dto) {
		dao.updateOne(dto);
	}

	@Override
	public void deleteOne(int no) {
		dao.deleteOne(no);
	}

}
