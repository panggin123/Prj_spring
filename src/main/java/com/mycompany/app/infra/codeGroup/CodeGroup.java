package com.mycompany.app.infra.codeGroup;

public class CodeGroup {

	// dto
	private String seq;
	private String name;
	private String delNy;

	// 디비컬럼명 첫 글자는 소문자로 해야 한다.
	// seq는 편의상 디비에는 int지만 String으로 사용한다.
	// 주로 테이블의 컬럼명과 일치
	
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
	public String getDelNy() {
		return delNy;
	}
	public void setDelNy(String delNy) {
		this.delNy = delNy;
	}

}
