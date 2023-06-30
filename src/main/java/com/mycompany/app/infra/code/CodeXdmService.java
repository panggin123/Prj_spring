package com.mycompany.app.infra.code;

import java.util.List;

public interface CodeXdmService {

	public List<CodeXdm> selectList(CodeXdmVo vo);
	
	public CodeXdm selectOne(CodeXdmVo vo);
	
	public int update(CodeXdm dto);
	
	public int delete(CodeXdm dto);
	
	public int insert(CodeXdm dto);
	
	public int uelete(CodeXdm dto);
}