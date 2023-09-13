package com.mycompany.app.infra.product;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	private static String namespace = "com.mycompany.app.infra.product.ProductMapper";

	public List<Product> selectList(ProductVo vo) {
		System.out.println("dao: vo.getShKeyword(): " + vo.getShKeyword());
		return sqlSession.selectList(namespace + ".selectList", vo);
	}

	public Product selectOne(ProductVo vo) {
		Product product = sqlSession.selectOne(namespace + ".selectOne", vo);
		return product;
	}

	public Product selectTwo(ProductVo vo) {
		Product product = sqlSession.selectOne(namespace + ".selectTwo", vo);
		return product;
	}
	
	
	public List<Product> listUploaded(ProductVo vo) {
		return sqlSession.selectList(namespace + ".listUploaded", vo);
	}

	  public int selectOneCheckId(ProductVo vo) {
		  return sqlSession.selectOne(namespace + ".selectOneCheckId",vo);
	 }
	

	public int selectOneCount(ProductVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}

	public int update(Product dto) {
		return sqlSession.update(namespace + ".update", dto);
	}

	public int delete(Product dto) {
		return sqlSession.delete(namespace + ".delete", dto);
	}

	public int insert(Product dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}

	public int uelete(Product dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}

	public Product selectBySeq(ProductVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	
	public int insertUploaded(Product dto) { 
		return sqlSession.insert(namespace + ".insertUploaded", dto); 
		}

	public List<Product> selectImg(ProductVo vo) {
		return sqlSession.selectList(namespace + ".selectImg", vo);
	}
	
	public Product selectCartSeq(ProductVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne",vo);
	}
}
