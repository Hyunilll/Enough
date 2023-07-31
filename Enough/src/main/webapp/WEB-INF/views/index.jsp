<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
</head>
<body>

<div style="width:1000px; margin: 0 auto; height: 100%; background: lightgray;">
	<article>
		<h1 style="text-align:center;">재고 리스트</h1>
		<form name="frm" method="post">
			<table>
				<tr>
					<td width="1000" align="right">
					<input class="btn" type="button" name="btn_write" value="상품 등록" 
							onClick="location.href='insertProduct'"></td>
				</tr>
			</table >
			<table border="1"  cellspacing="0"   style="text-align:center" width="1000">
				<tr>
					<th width="70">번호</th>
					<th width="230">상품명</th>
					<th  width="200">브랜드</th>
					<th  width="100">수량 </th>
					<th  width="100">단가</th>
					<th  width="100">총가격</th>
					<th  width="100">입력날짜</th>
					<th  width="100">수정</th>
				</tr>
		 	 	<c:forEach items="${productList}" var="productVO">
			  		<tr height="23" align="center">
			   			<td>${productVO.pseq}</td>
			   			<td>${productVO.name}</td>
			  			<td>${productVO.brand}</td>
						<td>${productVO.quantity}</td>
			   			<td>${productVO.price}</td>
			    		<td>${productVO.quantity * productVO.price}</td>
			   			<td><fmt:formatDate value="${productVO.indate}"/></td>
			 			<td><input type="button" id="test2" value="수정" onclick="dd()">
			 			<input type="button" id="test" value="수정완료" onClick="" style="display:none;">
			 			</td>
			    	</tr>
			  	</c:forEach> 
			</table>
		</form>
	</article>

</div>
<script type="text/javascript">
function dd(){
	alert("옴");
	$("#test").show();
	$("#test2").hide();
	$("#quantity").attr("disabled",false);
}
</script>
</body>
</html>