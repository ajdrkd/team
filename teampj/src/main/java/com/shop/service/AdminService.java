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
	public List<Product> selectproductList();

	/* 이미지 목록 */
	public List<AttachImageVO> selectimgList();

	/* 상품 조회 수정 페이지 */
	public Product goodsUpdateId(int productId);

	/* 상품 수정 페이지 */
	public int goodsUpdateProduct(Product product);

	public int goodsUpdateProductImg(AttachImageVO attachImageVO);

	/* 상품삭제 */
	public int deleterProdect(String productId);

	/* 회원삭제 */
	public int userDelete(String userId);

	// 회원 수정조회페이지 이동
	public User userUpdatePage(int userId);

	// 회원 수정
	public int userUpdate(User user);

}
