package com.asm.Interface;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.asm.Entity.Account;
import com.asm.Entity.CartItem;

@Repository
public interface CartItemDAO extends JpaRepository<CartItem, Integer> {
	 CartItem findByAccount(Account acc); 
}
