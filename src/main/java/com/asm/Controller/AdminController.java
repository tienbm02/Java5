package com.asm.Controller;

import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.asm.Entity.Account;
import com.asm.Interface.AccountDAO;
import com.asm.Interface.CategoryDAO;
import com.asm.Service.CookieService;
import com.asm.Service.SessionService;

@Controller
public class AdminController {

	@Autowired
	AccountDAO dao;

	@Autowired
	ServletContext app;

	@Autowired
	AccountDAO accdao;

	@Autowired
	CategoryDAO daoct;

	@Autowired
	HttpServletRequest req;

	@Autowired
	SessionService session;

	@Autowired
	CookieService cookie;

	@GetMapping("/admin/home")
	public String admin(Model model) {
		return "admin_father/home/index";
	}

	@GetMapping("/admin/login")
	public String admin1(Model model) {
		Cookie ckid = cookie.read("userid");
		Cookie ckpw = cookie.read("pass");
		if (ckid != null) {
			String uid = ckid.getValue();
			String pwd = ckpw.getValue();

			model.addAttribute("userid", uid);
			model.addAttribute("pass", pwd);
		}
		return "admins/admin_father/account/login";
	}

	@PostMapping("/admin/login")
	public String login(Model model, @RequestParam("username") String username,
			@RequestParam("password") String password, RedirectAttributes params,
			@RequestParam(value = "rm", defaultValue = "false") boolean rm) {
		try {
			Account user = dao.getById(username);
			if (!user.getPassword().equals(password)) {
				params.addAttribute("message", "Mật khẩu không đúng!");
				return "redirect:/admin/login";
			} else {
				if (!user.isActivated()) {
					params.addAttribute("message", "Tài khoản chưa active!");
					return "redirect:/admin/login";
				} else {
					if (!user.isAdmin()) {
						params.addAttribute("message", "Tài khoản không có quyền truy cập!");
						return "redirect:/admin/login";
					} else {
						String uri = session.getAttribute("security-uri");
						session.setAttribute("user", user);
						if (uri != null) {
							String link = uri;
							session.removeAttribute("security-uri");
							return "redirect:" + link;
						} else {
							params.addAttribute("message", "Đăng nhập thành công!");

						}
						if (rm == true) {
							cookie.create("userid", user.getUsername(), 30);
							cookie.create("pass", user.getPassword(), 30); 
						} else { 
							cookie.remove("userid");
							cookie.remove("pass");
						}
						
					}

				}
			}
		} catch (Exception e) {
			params.addAttribute("message", "Tài khoản không tồn tại!");
			return "redirect:/admin/login";
		}
		return "redirect:/admin/home";
	}

	@RequestMapping("/admin/logout")
	public String logout(Model model) {
		session.removeAttribute("user");
		return "redirect:/admin/login";
	}

}
