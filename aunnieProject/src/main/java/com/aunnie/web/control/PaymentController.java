package com.aunnie.web.control;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.aunnie.web.dto.PaymentDTO;
import com.aunnie.web.service.PaymentService;

@Controller
public class PaymentController {
	private static final Logger log = LoggerFactory.getLogger(PaymentController.class);

	@Resource(name="paymentService")
	private PaymentService ps;
	
	@RequestMapping("/paymentList4")
	public ModelAndView list(){
		return new ModelAndView("payment","payment",ps.selectAll());
	}
	
	@RequestMapping("/paymentdetail4")
	public ModelAndView paymentdetail(
			@RequestAttribute("payment_no")int payment_no){
		return new ModelAndView("paymentDetail","dto",ps.selectOne(payment_no));
	}
	
	@RequestMapping("/paymentwriteForm")
	public String writeForm(){
		return "writeForm";
	}
	
	@RequestMapping("/paymentwriteOk")
	public String write(
			@RequestAttribute("dto")PaymentDTO dto){
		ps.insertOne(dto);
		return "redirect:/paymentList";
	}
	
	@RequestMapping("/paymentmodifyForm")
	public ModelAndView modifyForm(
			@RequestAttribute("payment_no")int payment_no){
		return new ModelAndView("paymentmodifyForm","dto",ps.selectOne(payment_no));
	}
	
	@RequestMapping("/paymentmodifyOk")
	public String modifyOk(
			@ModelAttribute("dto")PaymentDTO dto){
		
		ps.update(dto);
		return "redirect:/orderList";
	}
	
	@RequestMapping("/paymentdelete")
	public String delete(
			@RequestAttribute("payment_no")int payment_no){
		
		ps.deleteOne(payment_no);
		
		return "redirect:/orderList";
		
	}
	
}
