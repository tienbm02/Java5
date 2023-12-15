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
public class Report {
	@Id
	Serializable group;
	Double sum;
	Long count;
	
	public Serializable getGroup() {
		return group;
	}
	
	public void setGroup(Serializable group) {
		this.group = group;
	}
	
	public Double getSum() {
		return sum;
	}
	
	public void setSum(Double sum) {
		this.sum = sum;
	}
	
	public Long getCount() {
		return count;
	}
	
	public void setCount(Long count) {
		this.count = count;
	}

	public Report(Serializable group, Double sum, Long count) {
		this.group = group;
		this.sum = sum;
		this.count = count;
	}

	public Report() {
		
	}
	
}
