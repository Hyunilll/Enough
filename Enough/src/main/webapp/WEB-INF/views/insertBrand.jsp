<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function go_insertbr(){
		if(document.insertbr.title.value==""){
			alert('브랜드명을 입력하세요');
			document.insertbr.title.focus();
		}
		document.insertbr.action = "insertbr";
		document.insertbr.submit();
	}
</script>
</head>
<body>
<div style="width:500px; margin : 0 auto; height: 100%; background: lightgray;
			text-align:center;">
	<h1>브랜드 등록</h1>
	<article>
		 
		 <form name = "insertbr" action="insertbr" method= "post"
		 	style=" margin:0 auto;">
		 	<table>
		 		<tr>
		 			<th>브랜드명</th>
		 			<td><input type="text" name="title" style= "width:150px;" /></td>
		 			<td>
		 				<input type="button" name="" value="등록" 
		 					onClick="go_insertbr()">
		 			</td>
		 		</tr>
		 	</table>
		 </form>
		 <div>
		 	<input type="button" name="" value="등록" onClick="go_insertbr()">
		 	<input type="button" value="돌아가기"onClick="location.href='/'">
		 </div>
		 
		 <div style="text-align:center;">
			 <c:forEach items="${brandList}" var="BrandVO">
				${BrandVO.title}&nbsp;&nbsp;
			 </c:forEach>
		 </div>		
		 	
	 </article>
 </div>
</body>
</html>