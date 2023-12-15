package com.asm.Interface;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.asm.Entity.Category;
import com.asm.Entity.Product;
import com.asm.Entity.Report;
import com.asm.Entity.Report2;

@Repository
public interface ProductDAO extends JpaRepository<Product, Integer> {
	List<Product> findByNameLike(String name);

	List<Product> findByPriceBetween(double minPrice, double maxPrice);

	List<Product> findByCategoryIsAndNameNotLike(Category cate, String name);

	List<Product> findByCategory(Category cate);

	List<Product> findByCategoryIsAndNameLike(Category cate, String name);

	Page<Product> findByCategory(Category cate, Pageable pageable);

	List<Product> findByOtherLike(String name);

	// top10 sản phẩm giảm giá
	@Query(value = "Select top 10* from products ORDER BY discount  DESC", nativeQuery = true)
	List<Product> getTopDiscount();

	// report
	@Query("SELECT new Report(o.category, sum(o.price), count(o)) " + " FROM Product o " + " GROUP BY o.category"
			+ " ORDER BY sum(o.price) DESC")
	List<Report> getInventoryByCategory();

	@Query("SELECT new Report2(od.product, sum(od.Amount)) FROM OrderDetail od "
			+ " GROUP BY od.product, od.product.category ")
	List<Report2> getAmountTotal();

}
