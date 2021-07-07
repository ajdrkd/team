package com.shop.service;

import java.util.List;

import com.shop.model.AttachImageVO;
import com.shop.model.Criteria;
import com.shop.model.Product;
import com.shop.model.User;

public interface AdminService {
	/* 상품 등록 */
	public void insertpro(Product product);

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

	/* 상품 목록(페이징) */
	public List<Product> selectproductList(Criteria cri);

	/* 상품 총 개수 */
	public int goodsGetTotal(Criteria cri);

	// 회원정보 수정 기능
	public int profileUpdateAdmin(User user);

	// 회원정보 조회 기능
	public User profileUpdateAdminId(String userId);
	
	//메인페이지 상품
	public List<Product> selectMainProductList();
	//Outer목록
	public List<Product> OuterProductList();
	// Top목록
	public List<Product> TopProductList();
	//Shirts목록
	public List<Product> ShirtsProductList();
	//Pants목록
	public List<Product> PantsProductList();
	//Suit목록
	public List<Product> SuitProductList();
	//BagShoes목록
	public List<Product> BagShoesProductList();
	// Acc목록
	public List<Product> AccProductList();
}
