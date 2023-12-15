package com.asm.Interface;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.asm.Entity.Configuration;

@Repository
public interface ConfigurationDAO extends JpaRepository<Configuration, Integer> {
}
