package com.asm.Interface;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.asm.Entity.Account;
import com.asm.Entity.Product;
import com.asm.Entity.Review;

@Repository
public interface ReviewDAO extends JpaRepository<Review, Integer> {
	Review findByAccountAndProduct(Account acc, Product p);
	List <Review> findByProduct(Product p);
}
