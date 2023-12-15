package com.asm.Entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Report3 {
	@Id
	Serializable group;
	Long amount;
	Double total;
	
	public Serializable getGroup() {
		return group;
	}
	
	public void setGroup(Serializable group) {
		this.group = group;
	}
	
	public Long getAmount() {
		return amount;
	}
	
	public void setAmount(Long amount) {
		this.amount = amount;
	}
	
	public Double getTotal() {
		return total;
	}
	
	public void setTotal(Double total) {
		this.total = total;
	}

	public Report3(Serializable group, Long amount, Double total) {
		this.group = group;
		this.amount = amount;
		this.total = total;
	}

	public Report3() {
		
	}
	
}
