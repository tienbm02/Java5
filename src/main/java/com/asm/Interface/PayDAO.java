package com.asm.Interface;

import org.springframework.data.domain.Pageable;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.asm.Entity.Account;
import com.asm.Entity.Pay;
import com.asm.Entity.Product;

@Repository
public interface PayDAO extends JpaRepository<Pay, Long> {
	Pay findByAccountIsAndStatusEquals(Account acc, String status);
	List <Pay> findByAccount(Account acc);
	@Query("SELECT DISTINCT d.product FROM OrderDetail d WHERE d.pay.account.username like ?1")
	List<Product> getProductByUsername(String username);
	@Query(value = "select * from pays "
			+ "where Created between ?1 and ?2 ", nativeQuery = true)
	Page <Pay> findByCreatedBetween(String fromD, String toD, Pageable pageable);
}
