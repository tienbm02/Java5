package com.asm.Controller.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.asm.Entity.OrderDetail;
import com.asm.Interface.OrderDetailDAO;

@Controller
public class ListOrderDetailController {
	@Autowired
	OrderDetailDAO daood;

	@RequestMapping("/admin/order/detail/{id}")
	public String listOrderDetail(Model model, @PathVariable("id") Long id) {
		List<OrderDetail> listorderdetail = daood.findByPayId(id);
		model.addAttribute("listorderdetail", listorderdetail);
		return "admin_father/order/listOrderDetail";
	}

}
