package com.handloom.authentication;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RegisterController {
	@Autowired
	RegisterRepo repo;
	@Autowired
	HttpSession session;
	@RequestMapping("register")
	public String register() {
		return "register";
	}
	@RequestMapping("login")
	public String login() {
		return "login";
	}
	@RequestMapping("/registerUser")
	public String details(ModelMap model,Register reg,@RequestParam("userId")String uid){
			if(checkEmailAvailable(uid)) {
				model.addAttribute("message","Username Already Exists");
				return "register";
			}
			else {
				repo.save(reg);
				return "redirect:/";
			}
	}
	@RequestMapping("loginUser")
	public String login(@RequestParam("username")String uname,@RequestParam("password")String pwd) {
			if(uname.equals("admin") && pwd.equals("admin")) {
				return "redirect:/addproduct";
			}
		
			Register r=checkUser(uname,pwd);
			if(r==null) {
				session.setAttribute("error","Invalid Credentials");
				return "login";
			}
			else {
				session.setAttribute("id",r.getId());
				session.setAttribute("name",r.getFname());
				return "redirect:/";
			}
	}
	public Register checkUser(String uname,String pwd) {
		List<Register> l=repo.findAll();
		session.setAttribute("users",l);
		for(int i=0;i<l.size();i++) {
			String u=l.get(i).getUserId();
			String p=l.get(i).getPassword();
			if(u.equals(uname) && p.equals(pwd)) {
				return l.get(i);
			}
		}
		return null;
	}
	public boolean checkEmailAvailable(String s) {
		List<Register> l=repo.findAll();
		for(int i=0;i<l.size();i++) {
			String w=l.get(i).getUserId();
			if(w.equals(s)) {
				return true;
			}
		}
		return false;
	}
	@RequestMapping("logout")
	public String logout() {
		session.invalidate();
		return "redirect:/";
	}
}
