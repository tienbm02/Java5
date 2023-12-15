package com.asm.Controller.Admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asm.Entity.Category;
import com.asm.Entity.Pay;
import com.asm.Entity.Report;
import com.asm.Entity.Report2;
import com.asm.Interface.CategoryDAO;
import com.asm.Interface.PayDAO;
import com.asm.Interface.ProductDAO;

@Controller
public class ReportController {
	@Autowired
	ProductDAO dao;

	@Autowired
	PayDAO paydao;

	@Autowired
	CategoryDAO ctdao;

	@Autowired
	HttpServletRequest req;

	@RequestMapping("/admin/report")
	public String inventory(Model model) {
		String category = req.getParameter("category");
		Double tongdoanhthu = 0.0;
		List<Pay> listpay = paydao.findAll();
		for (Pay item : listpay) {
			tongdoanhthu += item.getTotal();
		}
		model.addAttribute("tongdoanhthu", tongdoanhthu);
		List<Report> items = dao.getInventoryByCategory();
		model.addAttribute("items", items);
		if (category != null) {
			System.err.println(category);
			if (category.equals("LTOP")) {
				category = "'LTOP'";
			}else if(category.equals("PKDT")){
				category = "'PKDT'";
			}else if(category.equals("TABL")){
				category = "'TABL'";
			}else{
				category = "'MOB '";
			}
			model.addAttribute("category", category);
		}
		return "admin_father/report/report";

	}

	@ModelAttribute("listob")
	public List<Report2> getReport() {
		List<Report2> list = dao.getAmountTotal();
		return list;
	}

	@ModelAttribute("cateList")
	public List<Category> getCategories() {
		List<Category> list = ctdao.findByProductId();
		return list;
	}
	
}
