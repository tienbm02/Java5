package com.asm.Interface;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.asm.Entity.Account;

@Repository
public interface AccountDAO extends JpaRepository<Account, String> {
	Page<Account> findByFullnameAndAdmin(String name, boolean kt, Pageable pageable);
	Page<Account> findByAdmin(boolean kt, Pageable pageable);
}
