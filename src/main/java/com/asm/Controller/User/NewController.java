package com.asm.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asm.Entity.New;
import com.asm.Interface.NewDAO;


@Controller
public class NewController {
	
	@Autowired
	NewDAO daonew;
	@RequestMapping("/user/news")
	public String news(Model model) {
		model.addAttribute("boardnewlist", daonew.findAll());
		return "news/new";
	}
	@RequestMapping("/user/new/detail/{id}")
	public String DetailNew(Model model,@PathVariable("id") Integer id) {
		New item = daonew.getById(id);
		model.addAttribute("boardnew", item);
		model.addAttribute("boardnewlist", daonew.findAll());
		return "news/detailnew";
	}
}
