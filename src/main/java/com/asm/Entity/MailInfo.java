package com.asm.Entity;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MailInfo {
	String from;
	String to;
//	String[] cc;
//	String[] bcc;
//	String[] attachments;
	String subject;
	String body;
	List<String> cc = new ArrayList<>();
	List<String> bcc = new ArrayList<>();
	List<MultipartFile> attachments = new ArrayList<>();
	
	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public List<String> getCc() {
		return cc;
	}

	public void setCc(List<String> cc) {
		this.cc = cc;
	}

	public List<String> getBcc() {
		return bcc;
	}

	public void setBcc(List<String> bcc) {
		this.bcc = bcc;
	}

	public List<MultipartFile> getAttachments() {
		return attachments;
	}

	public void setAttachments(List<MultipartFile> attachments) {
		this.attachments = attachments;
	}

	public MailInfo(String to, String subject, String body) {
		this.from = "EvosShop <poly@fpt.edu.vn>";
		this.to = to;
		this.subject = subject;
		this.body = body;
	}
	
	public MailInfo(String from, String to, String subject, String body, List<String> cc, List<String> bcc,
			List<MultipartFile> attachments) {
		this.from = "EvosShop <poly@fpt.edu.vn>";
		this.to = to;
		this.subject = subject;
		this.body = body;
		this.cc = cc;
		this.bcc = bcc;
		this.attachments = attachments;
	}

	public MailInfo() {
		
	}
	
}
