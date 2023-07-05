package com.mycompany.app.infra.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeXdmDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.code.CodeXdmMapper";
	
	public List<CodeXdm> selectList(CodeXdmVo vo){
		System.out.println("dao: vo.getShKeyword(): " + vo.getShKeyword());
		return sqlSession.selectList(namespace + ".selectList", vo);
		}
	
	public CodeXdm selectOne(CodeXdmVo vo) {
		CodeXdm codeXdm = sqlSession.selectOne(namespace + ".selectOne",vo);
		return codeXdm;
	}
	
	public int selectOneCount(CodeXdmVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	
	public int update(CodeXdm dto) { return sqlSession.update(namespace + ".update",dto);}
	
	public int delete(CodeXdm dto) { return sqlSession.delete(namespace + ".delete",dto);}
	
	public int insert(CodeXdm dto) { return sqlSession.insert(namespace + ".insert",dto);}
	
	public int uelete(CodeXdm dto) {return sqlSession.insert(namespace + ".insert",dto);} 
	
}	
	