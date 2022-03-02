package com.handloom.authentication;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class homeController {
	@Autowired 
	manufacturerRepo repo;
	@Autowired
	HttpSession session;
	@GetMapping("/")
	public String home() {
		return "index";
	}
	@RequestMapping("shop")
	public String shop(ModelMap model) {
		List<manufacturer> l=repo.findAll();
		model.addAttribute("manu",l);
		session.setAttribute("proddetails",l);
		return "shop";
	}
	@RequestMapping("/sproduct")
	public String sproduct() {
		return "sproduct";
	}
	@RequestMapping("/cart/{id}")
	public String cart(@PathVariable int id) {
		List<manufacturer> prod=(List<manufacturer>) session.getAttribute("proddetails");
		manufacturer m=null;
		for(int i=0;i<prod.size();i++) {
			if(prod.get(i).getId()==id) {
				m=prod.get(i);
			}
		}
		cart.cartprod.add(m);
		return "redirect:/cart";
	}
	@GetMapping("cart")
	public String cartof(ModelMap model) {
		model.addAttribute("total",cart.cartprod.stream().mapToDouble(manufacturer::getPrice).sum());
		model.addAttribute("cart",cart.cartprod);
		return "cart";
	}
	@RequestMapping("/payment")
	public String payment() {
		return "payment";
	}
}
