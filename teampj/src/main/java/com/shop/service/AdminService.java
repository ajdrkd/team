package com.shop.service;

import java.util.List;

import com.shop.model.AttachImageVO;
import com.shop.model.Criteria;
import com.shop.model.Product;
import com.shop.model.User;

public interface AdminService {
	/* 상품 등록 */
	public void insertpro(Product product);

	/* 상품 목록 */
	public List<Product> selectproductList(Criteria cri);

	/* 이미지 목록 */
	public List<AttachImageVO> selectimgList();

	/* 상품 조회 수정 페이지 */
	public Product goodsUpdateId(int productId);

	/* 상품 수정 페이지 */
	public int goodsUpdateProduct(Product product);
	public int goodsUpdateProductImg(AttachImageVO vo);

	/* 상품삭제 */
	public int deleterProdect(String productId);

	/* 회원삭제 */
	public int userDelete(String userId);
	/* 상품 총 개수 */
	public int goodsGetTotal(Criteria cri);

	
	
	

}

