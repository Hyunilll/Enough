<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="/script/script.js"></script>
<link  rel="stylesheet" href="/css/css.css">  
</head>
<body>

<div style="width:1200px; margin: 0 auto; height: 100%;">
	<article>
		<form name="frm" method="post">
			<table>
				<tr>
					<td>
						<h1>Product List</h1>
						<h1>${message}</h1>
					</td>
				</tr>
			
				<tr>
					<td width="1150" align="right">
						<input id="" type="search" name="key" placeholder="상품명을 입력해주세요." 
							value="${key}">
                        <button type="submit" class="btn btn-indigo" value="검색" 
                        	onClick="go_search1('/')">검색</button>
                        <button type="submit" class="btn btn-indigo" value="전체보기" 
                        	onClick="go_total1('/')">전체보기</button>
						<!-- <input class="btn" type="button" name="btn_write" value="재고리스트로 이동" 
							onClick="location.href='/completeList?first=y'"> -->
						<input class="btn btn-blue" type="button" name="btn_write" value="상품 등록" 
							onClick="location.href='insertProduct'">
						<!-- <input type="text" name="title"> -->
						<input class="btn btn-blue" type="button" name="btn_write" value="브랜드 등록" 
							onClick="location.href='insertBrand'">
					</td>
				</tr>
			</table >
			
			<table>
				<tr>
					<th width="60">번호</th>
					<th width="230">상품명</th>
					<th  width="150">브랜드</th>
					<th  width="130">미송수량</th>
					<th  width="80">재고수량</th>
					<th  width="100">단가</th>
					<th  width="100">총가격</th>
					<th  width="100">입력날짜</th>
					<!-- <th  width="70">완료수량</th> -->
					<th  width="170">배송완료</th>
					<th  width="60">삭제</th>
					<th  width="60">총수량</th>
				</tr>
		 	 	<c:forEach items="${productList}" var="productVO">
			  		<tr height="23" align="center">
			   			<td>${productVO.pseq}</td>
			   			<td>${productVO.name}</td>
			  			<td>${productVO.brand}</td>
			  			<td>
			  				<input type="text" id="quantity1_${productVO.pseq}"name="quantity1" 
			  					value="${productVO.quantity1}" size="1"
			  					style="background:lightgray; margin: 0 auto;" disabled />
			  				<input type="button" id="test3_${productVO.pseq}" value="추가" 
			 					onClick="ddd1('${productVO.pseq}')">	
			 				<input type="button" id="test4_${productVO.pseq}" value="추가완료" 
			 					onClick="go_add('${productVO.pseq}')" style="display:none;">
			  			</td>
			  			<td>
			  				<input type="text" id="quantity3_${productVO.pseq}" name ="quantity3" 
			  					value="${productVO.quantity3}" size="1" 
			  					style="background:lightgray; margin: 0 auto;" disabled>
			  			</td>
			   			<td>${productVO.price}</td>
			    		<td>${(productVO.quantity1 + productVO.quantity3) * productVO.price}</td>
			   			<td><fmt:formatDate value="${productVO.indate}"/></td>
			 			<td>
			  				<input type="text" id="quantity2_${productVO.pseq}" name ="quantity2" 
			  					value="0" size="1" 
			  					style="background:lightgray; margin: 0 auto;" disabled>
			 				<input type="button" id="test2_${productVO.pseq}" value="배송완료" 
			 						onClick="dd1('${productVO.pseq}')">
			 				<input type="button" id="test_${productVO.pseq}" value="완료" 
			 						onClick="go_update1('${productVO.pseq}')" style="display:none;">
			 			</td>
			 			<td>
			 				<input type="button" id="" value="삭제" onClick="go_deletepr('${productVO.pseq}')" />
			 			</td>
			 			<td>
			 				<input type="text" id="quantity4_${productVO.pseq}" name ="quantity4" 
			  					value="${productVO.quantity4}" size="1" 
			  					style="background:lightgray; margin: 0 auto;" disabled>
			 			</td>
			    	</tr>
			  	</c:forEach> 
			</table>
			<br>
			<jsp:include page="paging.jsp">
				<jsp:param name="command" value="/" />
			</jsp:include>
		</form>
	</article>
</div>

<!--
### .prop()은 해당 요소의 프로퍼티(property)를 조작하는데 사용됩니다. 	
	불리언 값을 반환하며, 보통 체크박스 등의 상태를 다룰 때 주로 사용됩니다.
### .attr()은 해당 요소의 속성(attribute)를 조작하는데 사용됩니다. 
	HTML 속성의 값을 반환하며, 일반적인 HTML 속성을 다룰 때 사용됩니다. (예: value, src, href 등)
-->

</body>
</html>