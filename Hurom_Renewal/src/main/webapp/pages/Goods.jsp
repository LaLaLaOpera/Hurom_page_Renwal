<%@page import="product_option.OptionDAO"%>
<%@page import="product_option.OptionDTO"%>
<%@page import="java.util.List"%>
<%@page import="catalog.CatalogDAO"%>
<%@page import="catalog.CatalogDTO"%>
<%@page import="product.ProductDTO"%>
<%@page import="product.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String num = request.getParameter("product_num");
	ProductDAO dao = new ProductDAO(application); // DAO 객체 생성
	CatalogDTO cdto = new CatalogDTO(); // 카탈로그 DTO 생성
	OptionDTO odto = new OptionDTO(); // 옵션 DTO 생성
	ProductDTO dto = dao.productView(num);
	OptionDAO odao = new OptionDAO(application);
	List optionList = odao.Options(dto.getProduct_num());
	dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="./Header.jsp"></jsp:include>
	<!-- 메인 이미지의 이름을 DB에 저장하는 이름과 동일하게 설정하여 이미지 URL을 따로 DB에 저장할 필요가없어졌다. -->
	
	<%
		for (int i = 0; i<optionList.size(); i++){
			OptionDTO options = (OptionDTO)optionList.get(i);
			%><img src="../image/Sub/<%=dto.getProduct_name()%>/<%=dto.getProduct_name()%>_<%=options.getOption_name()%>.webp"><%
		}
	%>
	<p>제품 이름 <%=dto.getProduct_name() %></p>
	제품 가격 <%=dto.getPrice() %>
		<form>
		<select>
			<%
			for (int i =0; i<optionList.size(); i++){
				OptionDTO options = (OptionDTO)optionList.get(i);
				%><option value = <%=options.getOption_name()%>><%=options.getOption_name()%></option><%
			}
			%>
		</select>
	</form>
	선택한 옵션의 정보를 가져와줄 부분<br>
	원래가격과 바뀔 가격을 계산해주는 부분<br>
	그것들을 리스트에 저장하는 부분<br>
	만약 이미 리스트에 들어있는 값을 추가로 선택한다면 선택하지 못하게하거나 카운트를 1 늘려주는 부분<br>
	리스트를 뿌려주는 부분<br>
	옵션이름 수량 총가격<br>
	<p>카탈로그 출력</p>
	<%
	cdto.setProduct_num(num);
	CatalogDAO cdao = new CatalogDAO(application);
	List catalogList = cdao.getCatalog(cdto.getProduct_num());
	//모든 자료를 DB와 알기쉽게 연결하여 이후 추가와 수정을 쉽도록 했다.
	for (int i=0; i<catalogList.size();i++){
		int catalogNum = (int)catalogList.get(i);
		%> <img src="../image/Catalog/<%=dto.getProduct_name()%>/<%=catalogNum%>.webp"><%
	}
	%>
	
</body>
</html>