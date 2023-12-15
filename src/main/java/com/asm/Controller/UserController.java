package com.asm.Controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.asm.Entity.Category;
import com.asm.Entity.Configuration;
import com.asm.Entity.Product;
import com.asm.Entity.Report;
import com.asm.Entity.Report2;
import com.asm.Entity.Review;
import com.asm.Interface.CategoryDAO;
import com.asm.Interface.ConfigurationDAO;
import com.asm.Interface.ProductDAO;
import com.asm.Interface.ReviewDAO;
import com.asm.Service.ShoppingCartService;

@Controller
public class UserController {
	@Autowired
	ProductDAO daopd;
	@Autowired
	ConfigurationDAO daocf;
	DecimalFormat df = new DecimalFormat("#,###₫");
	@Autowired
	ShoppingCartService cart;
	@Autowired
	HttpServletRequest req;
	@Autowired
	ReviewDAO rvdao;
	@Autowired
	CategoryDAO ctdao;

	@RequestMapping("user/home")
	public String home(Model model, @RequestParam("t") Optional<Integer> t,
			@RequestParam("field") Optional<String> field, @RequestParam("filter") Optional<String> filter) {
		String cateid = req.getParameter("category");
		int s = t.orElse(0);
		Sort sort = Sort.by(Direction.ASC, field.orElse("id"));
		if (s == 0) {
			model.addAttribute("s", s);
			sort = Sort.by(Direction.ASC, field.orElse("id"));
			s = 1;
		} else if (s == 1) {
			model.addAttribute("s", s);
			sort = Sort.by(Direction.DESC, field.orElse("id"));
			s = 0;
		}
		if (!filter.isEmpty()) {
			filter.orElse("no");
			if (filter.get().equals("top")) {
				List<Product> listpd = daopd.getTopDiscount();
				model.addAttribute("listpd", listpd);
			}
		} else {
			if (cateid != null) {
				model.addAttribute("cate", "category=" + cateid + "&");
				Category cate = ctdao.getById(cateid);
				List<Product> listpd = daopd.findByCategory(cate);
				model.addAttribute("listpd", listpd);
			} else {
				List<Product> listpd = daopd.findAll(sort);
				model.addAttribute("listpd", listpd);
			}

		}
		model.addAttribute("SLTGH", cart.getCount());
		return "/home";
	}

	@RequestMapping("/user/about")
	public String about(Model model) {
		return "sub-page/about";
	}

	@RequestMapping("/user/product/productdetail/{id}")
	public String ProductDetail(Model model, @PathVariable("id") Integer id) {
		String gia = req.getParameter("quality");
		Product item = daopd.findById(id).get();
		List<Review> listrv = rvdao.findByProduct(item);
		if (listrv != null) {
			model.addAttribute("listrv", listrv);
		}
		model.addAttribute("pd", item);
		if (gia != null) {
			model.addAttribute("gia", gia);
		} else {
			model.addAttribute("gia", 1);
		}
		List<Product> listpd = daopd.findAll();
		model.addAttribute("listpd", listpd);

		if (daocf.existsById(id)) {
			Configuration listconfigurations = daocf.findById(id).get();
			model.addAttribute("cf", listconfigurations);
		}

		return "mainfunction/productdetail";
	}

	@ModelAttribute("cateList")
	public List<Category> getCategories() {
		List<Category> list = ctdao.findByProductId();
		return list;
	}
	
	@ModelAttribute("listob")
	public List<Report2> getReport() {
		List<Report2> list = daopd.getAmountTotal();
		return list;
	}
}
