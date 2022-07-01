package product;


import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.ServletContext;

import common.JDBConnect;


public class ProductDAO extends JDBConnect{
	public ProductDAO(ServletContext application) {
		super(application);
	}
	
	public ProductDTO productView(String num) {
		ProductDTO dto = new ProductDTO();
		String query = "SELECT * FROM product WHERE product_num = ?";

		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, num);
			rs = psmt.executeQuery();
			while(rs.next()){
				dto.setProduct_num(rs.getString("product_num"));
				dto.setProduct_name(rs.getString("product_name"));
				dto.setPrice(rs.getInt("price"));
				dto.setP_cat(rs.getString("p_cat"));
			}
		}catch(Exception e) {
			System.out.println("selectView 만들던중 이상 발생");
			e.printStackTrace();
		}
		return dto;
	}
	
	//같은 카테고리에 속한 제품들 나타내주는 쿼리 
	public List<ProductDTO>  totalCount(String P_CAT) {
		List<ProductDTO> bbs= new Vector<ProductDTO>();
		
		String query = "SELECT * FROM Product WHERE P_CAT = ?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, P_CAT);
			
			rs = psmt.executeQuery();
			while(rs.next()) {
				ProductDTO dto = new ProductDTO();
				dto.setProduct_name(rs.getString("product_name"));
				dto.setProduct_num(rs.getString("product_num"));
				
				bbs.add(dto);
			}
		} catch(Exception e) {
			System.out.println("카테고리를 계산하는 중 예외가 발생되었음");
			e.printStackTrace();
		}
		return bbs;
	}

}