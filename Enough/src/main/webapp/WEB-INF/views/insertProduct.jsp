
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>insertProduct</title>
<script type="text/javascript" src="/script/script.js"></script>
<link  rel="stylesheet" href="/css/css.css">  
</head>
<body>
<div style="width:500px; margin: 0 auto; text-align:center;">
	<h1>Product Registration</h1>
	<article>
		<form name="insertpr" action="insertpr" method="post">	
			<table>
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
					<td><input type="text" name="quantity1" style= "width:150px;"></td>	
				</tr>
				<tr>
					<th>가격( ,쓰지마) :</th> 
					<td><input type="text" name="price" style= "width:150px;"></td>
				</tr>
			</table>
		
			<div>
				<input type="button" class="btn btn-indigo" value="상품등록" onclick="go_insertpr()">
				<input type="button" class="btn btn-indigo" value="목록으로" onclick="location.href='/?first=y'">
			</div>
		</form> 
	</article>
</div>
</body>
</html>