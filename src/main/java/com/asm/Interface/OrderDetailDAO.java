package com.asm.Interface;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.asm.Entity.OrderDetail;
import com.asm.Entity.Pay;
import com.asm.Entity.Product;

@Repository
public interface OrderDetailDAO extends JpaRepository<OrderDetail,Long> {
	OrderDetail findByPayAndProduct(Pay pay, Product p);
	@Query("SELECT od FROM OrderDetail od where od.pay.id like ?1")
	  List<OrderDetail> findByPayId(Long id);
}
