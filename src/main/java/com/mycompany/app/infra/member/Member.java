package com.mycompany.app.infra.member;

public class Member {

	// dto
	private String seq;
	private String name;
	private String defaultNy;
	private String tel;
	private String adderss;
	private String pass;
	private String id;
	private String email;



	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	// 디비컬럼명 첫 글자는 소문자로 해야 한다.
	// seq는 편의상 디비에는 int지만 String으로 사용한다.
	// 주로 테이블의 컬럼명과 일치
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAdderss() {
		return adderss;
	}
	public void setAdderss(String adderss) {
		this.adderss = adderss;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	//-----
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDefaultNy() {
		return defaultNy;
	}
	public void setDefaultNy(String defaultNy) {
		this.defaultNy = defaultNy;
	}


}
