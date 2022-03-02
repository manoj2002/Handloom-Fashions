package com.handloom.authentication;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.*;

@Controller
public class manufacturerController {
	public static String uploadDirectory = System.getProperty("user.dir")+"/src/main/webapp/imagedata";
	@Autowired
	HttpSession session;
	@Autowired
	manufacturerRepo Repo;
	@RequestMapping("addproduct")
	public String manufacturer() {
		return "addproduct";
	}
	@PostMapping("/savemanu")
	public String details(ModelMap model,manufacturer manu,@RequestParam("img")MultipartFile file,@RequestParam("prodcategory")String category) throws IOException{
	    String filename=file.getOriginalFilename();
	    Path fileNameAndPath = Paths.get(uploadDirectory,filename);
	    Files.write(fileNameAndPath,file.getBytes());
	    manu.setImage(filename);
	    manu.setProdtype(category);
	    Repo.save(manu);
	    List<manufacturer> l= Repo.findAll();
	    model.addAttribute("manu",l);
		return "redirect:/shop";
	}
	@RequestMapping("/sproduct/{id}")
	public String Product(@PathVariable("id") int id,ModelMap model) {
		List<manufacturer> prod=(List<manufacturer>) session.getAttribute("proddetails");
		manufacturer m=null;
		for(int i=0;i<prod.size();i++) {
			if(prod.get(i).getId() == id) {
				m=prod.get(i);
				break;
			}
		}
		model.addAttribute("manu",m);
		return "sproduct";
	}
}
