package com.mycompany.app.infra.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList(MemberVo vo){
		System.out.println("service: vo.getShKeyword(): " + vo.getShKeyword());		
		return dao.selectList(vo);
		}

	@Override
	public Member selectOne(MemberVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int update(Member dto) {return dao.update(dto);}
	
	@Override
	public int delete(Member dto) {return dao.delete(dto);}
	
	@Override
	public int insert(Member dto) {return dao.insert(dto);}
	
	@Override
	public int uelete(Member dto) {return dao.uelete(dto);}

	@Override
	public int selectOneCount(MemberVo vo) {
		return dao.selectOneCount(vo);
	}
	
//	public List<CodeGroup> selectOne(CodeGroupVo vo){
//		return dao.selectList(vo);
//	}
}
