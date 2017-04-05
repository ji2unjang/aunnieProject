package com.aunnie.web.control;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.aunnie.web.service.ProductService;

@Controller
public class ProductController {
	
	@Resource(name="productService")
	private ProductService service;
	
	@RequestMapping("/productList")
	public ModelAndView list(){
		return new ModelAndView("pdList","list",service.getAll());
	}
}
