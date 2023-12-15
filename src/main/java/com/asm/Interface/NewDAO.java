package com.asm.Interface;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.asm.Entity.New;

@Repository
public interface NewDAO extends JpaRepository<New, Integer> {
}
