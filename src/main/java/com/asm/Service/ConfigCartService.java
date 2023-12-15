package com.asm.Service;

import java.util.List;

import com.asm.Entity.Configuration;

public interface ConfigCartService {
	List<Configuration> getItems();

	void add(int id);

	void remove(int id);


	void clear();
}
