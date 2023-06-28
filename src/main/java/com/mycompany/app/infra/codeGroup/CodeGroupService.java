package com.mycompany.app.infra.codeGroup;

import java.util.List;

public interface CodeGroupService {

	public List<CodeGroup> selectList(CodeGroupVo vo);
	
	public CodeGroup selectOne(CodeGroupVo vo);
	
	public int update(CodeGroup dto);
	
	public int delete(CodeGroup dto);
	
	public int insert(CodeGroup dto);
	
	
//	public List<CodeGroup> selectOne(CodeGroupVo vo);
	
//	public List<CodeGroup> selectList();	
	
//	public List<CodeGroup> selectList();
	
}
