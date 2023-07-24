package com.mycompany.app.infra.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDao dao;
	
	@Override
	public List<Product> selectList(ProductVo vo){
		System.out.println("service: vo.getShKeyword(): " + vo.getShKeyword());		
		return dao.selectList(vo);
		}

	@Override
	public Product selectOne(ProductVo vo) {
		return dao.selectOne(vo);
	}
	
	@Override
	public int selectOneCheckId(ProductVo vo) {
		return dao.selectOneCheckId(vo);
	}


	@Override
	public int update(Product dto) {return dao.delete(dto);}
	
	@Override
	public int delete(Product dto) {return dao.delete(dto);}
	
	@Override
	public int insert(Product dto) {return dao.delete(dto);}
	
	@Override
	public int uelete(Product dto) {return dao.uelete(dto);}

	@Override
	public int selectOneCount(ProductVo vo) {
		return dao.selectOneCount(vo);
	}



	
}
