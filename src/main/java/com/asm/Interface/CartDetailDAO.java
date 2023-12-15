package com.asm.Interface;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.asm.Entity.CartDetail;
import com.asm.Entity.CartItem;
import com.asm.Entity.Product;

@Repository
public interface CartDetailDAO extends JpaRepository<CartDetail, Integer> {
	 CartDetail findByCartItemIsAndProduct(CartItem cart, Product p);  
		
		  @Query("SELECT cd FROM CartDetail cd  where cd.cartItem.id like ?1")
		  List<CartDetail> findByCartId(Integer id);
		 
	
}
