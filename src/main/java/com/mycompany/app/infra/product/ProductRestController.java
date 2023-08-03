package com.mycompany.app.infra.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;



@RestController
@RequestMapping("/rest/product")
public class ProductRestController extends ProductController{

	
			@Autowired
			ProductServiceImpl service;
			
			@RequestMapping(value = "", method = RequestMethod.GET)
//			@GetMapping("")
			public List<Product> selectList(ProductVo vo) throws Exception {
				List<Product> list = service.selectList(vo);
				return list;
			}
			

			@RequestMapping(value = "/{seq}", method = RequestMethod.GET)
//			@GetMapping("/{seq}")
			public Product selectOne(@PathVariable String seq, ProductVo vo) throws Exception {
				vo.setSeq(seq);
				Product item = service.selectOne(vo);
				return item;
			}
			

			@RequestMapping(value = "", method = RequestMethod.POST)
//			@PostMapping("")
			public String insert(@RequestBody Product dto) throws Exception {
				service.insert(dto);
				return dto.getSeq();
			}
			
			
			@RequestMapping(value = "/{seq}", method = RequestMethod.PUT)
//			@PatchMapping("/{seq}")
//			@PutMapping("/{seq}")
			public void update(@PathVariable String seq, @RequestBody Product dto) throws Exception {
				dto.setSeq(seq);
				service.update(dto);
			}
	}

