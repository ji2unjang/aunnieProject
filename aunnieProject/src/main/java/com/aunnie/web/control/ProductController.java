package com.aunnie.web.control;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.aunnie.web.service.CategoryService;
import com.aunnie.web.service.DivisionService;
import com.aunnie.web.service.ProductService;
import com.aunnie.web.service.SectionService;

@Controller
public class ProductController {
	
	@Resource(name="productService")
	private ProductService service;
	@Resource(name="categoryService")
	private CategoryService cs;
	@Resource(name="divisionService")
	private DivisionService ds;
	@Resource(name="sectionService")
	private SectionService ss;
	
	@RequestMapping("/productList")
	public ModelAndView list(){
		ModelAndView mv = new ModelAndView("pdList");
		mv.addObject("list", service.getAll());
		mv.addObject("categories", cs.getAll());
		mv.addObject("divisions", ds.getAll());
		mv.addObject("sections", ss.getAll());
		return mv;
	}
	
	@RequestMapping("/productDetail")
	public ModelAndView listDetail(){
		return new ModelAndView("pdDetail","list",service.getAll());
	}
}
