package com.mycompany.app.infra.code;

import java.util.ArrayList;
import java.util.List;

public class CodeXdm {

	private String seq;
	private String name;
	private String delNy;
	private String codeGroup_seq;
	private String codeNum;
	
	public String getCodeNum() {
		return codeNum;
	}
	public void setCodeNum(String codeNum) {
		this.codeNum = codeNum;
	}
	// for cache
	public static List<CodeXdm> cachedCodeArrayList = new ArrayList<CodeXdm>(); 
	
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
	public String getCodeGroup_seq() {
		return codeGroup_seq;
	}
	public void setCodeGroup_seq(String codeGroup_seq) {
		this.codeGroup_seq = codeGroup_seq;
	}
	
	
}
