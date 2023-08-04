<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
	function go_update(pseq){
		document.frm.action = "updatecompr?pseq=" + pseq;
	    document.frm.submit();
	}
	function dd(pseq){
		$("#test_" + pseq).show();
		$("#test2_" + pseq).hide();
		
		$("#quantity_" + pseq).prop("disabled",false);
	}
	function go_deletepr(pseq){
		var con = confirm ("삭제시 미송리스트도(주문) 삭제 됩니다 삭제 하시겠습니까?");
		if(con){
			document.frm.action= "deletepr?pseq=" + pseq ;
			document.frm.submit();
		}else return;
			
	}

</script>
</head>
<body>

<div style="width:1000px; margin: 0 auto; height: 100%; background: lightgray;">
	<article>
		<h1 style="text-align:center;">재고 리스트</h1>
		<form name="frm" method="post">
			<table>
				<tr>
					<td width="1000" align="right">
						<input class="btn" type="button" name="btn_write" value="미송리스트로 이동" 
							onClick="location.href='/'">
						<input class="btn" type="button" name="btn_write" value="상품 등록" 
							onClick="location.href='insertProduct'">
						<input class="btn" type="button" name="btn_write" value="브랜드 등록" 
							onClick="location.href='insertBrand'">
					</td>
				</tr>
			</table >
			<table border="1"  cellspacing="0"   style="text-align:center" width="1000">
				<tr>
					<th width="60">번호</th>
					<th width="230">상품명</th>
					<th  width="170">브랜드</th>
					<th  width="80">재고수량</th>
					<!-- <th  width="80">출고수량</th> -->
					<th  width="100">단가</th>
					<th  width="100">총가격</th>
					<th  width="100">입력날짜</th>
					<th  width="100">수정</th>
					<th  width="60">삭제</th>
				</tr>
		 	 	<c:forEach items="${productList}" var="productVO">
			  		<tr height="23" align="center">
			   			<td>${productVO.pseq}</td>
			   			<td>${productVO.name}</td>
			  			<td>${productVO.brand}</td>
			  			<%-- <td>${productVO.quantity3}</td> --%>
			  			<td>
			  				<input type="text" id="quantity_${productVO.pseq}" name ="quantity3" 
			  					value="${productVO.quantity3}" size="1" 
			  					style="background:lightgray; margin: 0 auto;" disabled>
			  			</td>
			   			<td>${productVO.price}</td>
			    		<td>${productVO.quantity3 * productVO.price}</td>
			   			<td><fmt:formatDate value="${productVO.indate}"/></td>
			 			<td>
			 				<input type="button" id="test2_${productVO.pseq}" value="수량수정" 
			 						onClick="dd('${productVO.pseq}')">
			 				<input type="button" id="test_${productVO.pseq}" value="수정완료" 
			 						onClick="go_update('${productVO.pseq}')" style="display:none;">
			 			</td>
			 			<td>
			 				<input type="button" id="" value="삭제" onClick="" />
			 			</td>
			    	</tr>
			  	</c:forEach> 
			</table>
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