package com.mycompany.app.infra.product;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.app.infra.constants.Constants;

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
	public Product selectBySeq(ProductVo vo){
		return dao.selectBySeq(vo);
	}
	
	@Override
	public Product selectCartSeq(ProductVo vo) {
		return dao.selectCartSeq(vo);
	}
	
	public List<Product> listUploaded(ProductVo vo){
		return dao.listUploaded(vo);
		}

	@Override
	public int update(Product dto) throws Exception {
		dao.update(dto);
		uploadFiles(dto.getUploadImg(), dto, "proudctUploaded", dto.getUploadImgType(), dto.getUploadImgMaxNumber());
		uploadFiles(dto.getUploadFile(), dto, "proudctUploaded", dto.getUploadFileType(), dto.getUploadFileMaxNumber());
		return 1;
		}
	
	

	@Override
	public int delete(Product dto) {return dao.delete(dto);}
	
	@Override
	public int insert(Product dto) throws Exception {
		 dao.insert(dto);
	    	uploadFiles(dto.getUploadImg(), dto, "proudctUploaded", dto.getUploadImgType(), dto.getUploadImgMaxNumber());
	    	uploadFiles(dto.getUploadFile(), dto, "proudctUploaded", dto.getUploadFileType(), dto.getUploadFileMaxNumber());
		 return 1;
	}
	
	@Override
	public int uelete(Product dto) {return dao.uelete(dto);}

	@Override
	public int selectOneCount(ProductVo vo) {
		return dao.selectOneCount(vo);
	}

public void uploadFiles(MultipartFile[] multipartFiles, Product dto, String tableName, int type, int maxNumber) throws Exception {
		
		for(int i=0; i<multipartFiles.length; i++) {
    	
			if(!multipartFiles[i].isEmpty()) {
				
				String className = dto.getClass().getSimpleName().toString().toLowerCase();		
				String fileName = multipartFiles[i].getOriginalFilename();
				String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
				String uuid = UUID.randomUUID().toString();
				String uuidFileName = uuid + "." + ext;
				String pathModule = className;
				String nowString = nowString();
				String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
				String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
				String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";
				
				File uploadPath = new File(path);
				
				if (!uploadPath.exists()) {
					uploadPath.mkdir();
				} else {
					// by pass
				}
				  
				multipartFiles[i].transferTo(new File(path + uuidFileName));
				
				dto.setPath(pathForView);
				dto.setOriginalName(fileName);
				dto.setUuidName(uuidFileName);
				dto.setExt(ext);
				dto.setSize(multipartFiles[i].getSize());
				
				dto.setTableName(tableName);
				dto.setType(type);
//				dto.setDefaultNy();
				dto.setSort(maxNumber + i);
				dto.setPseq(dto.getSeq());

				dao.insertUploaded(dto);
    		}
		}
	}
public static String nowString() throws Exception {
	LocalDateTime localDateTime = LocalDateTime.now();
	String localDateTimeString = localDateTime.format(DateTimeFormatter.ofPattern(Constants.DATETIME_FORMAT_BASIC));
	return localDateTimeString;
}

@Override
public List<Product> selectUploaded(ProductVo vo) {
	
	return dao.selectImg(vo);
}
private void deleteFiles(String[] uploadImgDeleteSeq, String[] uploadImgDeletePathFile, Product dto,
		String string) {
	
}

	
}
