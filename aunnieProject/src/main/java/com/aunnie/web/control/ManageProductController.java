package com.aunnie.web.control;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aunnie.web.service.CategoryService;
import com.aunnie.web.service.DivisionService;
import com.aunnie.web.service.ProductService;
import com.aunnie.web.service.SectionService;

@Controller
public class ManageProductController {
	
	@Resource(name="productService")
	private ProductService service;
	@Resource(name="categoryService")
	private CategoryService cs;
	@Resource(name="divisionService")
	private DivisionService ds;
	@Resource(name="sectionService")
	private SectionService ss;
	
	@RequestMapping("/insertProduct")
	public String managelist(){
		return "admin/insertProduct";
	}
	
}
