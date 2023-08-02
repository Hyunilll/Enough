
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>insertProduct</title>
<script type="text/javascript">
function go_insertpr(){
	if( document.insertpr.name.value==""){ 
		alert('이름을 입력하세요');
		document.insertpr.name.focus();	
	}else if (document.insertpr.brand.value == "") {
		alert('브랜드를 입력하세요.'); 	
		document.insertpr.brand.focus();	
	}else if (document.insertpr.quantity.value == "") {
		alert('수량 입력하세요.'); 	
		document.inserpr.quantity.focus();	
	}else if (document.insertpr.price.value == "") {
		alert('가격을 입력하세요.'); 	
		document.insertpr.price.focus();	
	}else{
	document.insertpr.action = "insertpr";
	document.insertpr.submit();
	}
}
</script>
</head>
<body>
<div style="width:500px; margin : 0 auto; height: 100%; background: lightgray;
			text-align:center;">
	<h1>insert</h1>
	<article>
		<form name="insertpr" action="insertpr" method="post">	
			<table style= "margin: 0 auto;">
				<tr>
					<th>상품명 :</th> 
					<td><input type="text" name= "name" style= "width:150px;"></td>
				</tr>
				<tr>
					<th>브랜드명 :</th> 
					<td>	
						<select name="brand" id="brand" style= "width:160px;">
							<c:forEach items="${brandList}" var="BrandVO">
							    <option  value="${BrandVO.title}">${BrandVO.title}</option>
							</c:forEach>
						</select>
					</td>
					
				</tr>
				<tr>
					<th>수량 :</th> 
					<td><input type="text" name="quantity" style= "width:150px;"></td>	
				</tr>
				<tr>
					<th>가격( ,쓰지마) :</th> 
					<td><input type="text" name="price" style= "width:150px;"></td>
				</tr>
			</table>
		
			<div>
				<input type="button" value="상품등록" onclick="go_insertpr()">
				<input type="button" value="목록으로" onclick="location.href='/'">
			</div>
		</form> 
	</article>
</div>
</body>
</html>