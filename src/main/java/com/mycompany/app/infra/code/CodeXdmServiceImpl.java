package com.mycompany.app.infra.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeXdmServiceImpl implements CodeXdmService {

	@Autowired
	CodeXdmDao dao;
	
	@Override
	public List<CodeXdm> selectList(CodeXdmVo vo){
		System.out.println("service: vo.getShKeyword(): " + vo.getShKeyword());		
		return dao.selectList(vo);
		}

	@Override
	public CodeXdm selectOne(CodeXdmVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int update(CodeXdm dto) {return dao.update(dto);}
	
	@Override
	public int delete(CodeXdm dto) {return dao.delete(dto);}
	
	@Override
	public int insert(CodeXdm dto) {return dao.insert(dto);}
	
	@Override
	public int uelete(CodeXdm dto) {return dao.uelete(dto);}
}