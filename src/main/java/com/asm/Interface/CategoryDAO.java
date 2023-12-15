package com.asm.Interface;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.asm.Entity.Category;

@Repository
public interface CategoryDAO extends JpaRepository<Category, String> {
	@Query("SELECT distinct p.category FROM Product p ")
	  List<Category> findByProductId();
}
