<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/script/script.js"></script>

</head>
<body>
<div style="width:500px; margin : 0 auto; height: 100%; background: lightgray;
			text-align:center;">
	<h1>브랜드 등록</h1>
	<article>
		 
		 <form name = "insertbr" action="insertbr" method= "post">
		 	<table style= "margin: 0 auto;">
		 		<tr>
		 			<th>브랜드명</th>
		 			<td><input type="text" name="title" style= "width:150px;" /></td>
		 		</tr>
		 	</table>
		 
			 <div>
			 	<input type="button" name="" value="등록" onClick="go_insertbr()">
			 	<input type="button" value="돌아가기"onClick="location.href='/?first=y'">
			 </div>
			
			 <div style="text-align:center;">
				 <c:forEach items="${brandList}" var="BrandVO">
					<input type=button value="x" onClick="go_deletebr('${BrandVO.bseq}')">
					${BrandVO.title}&nbsp;&nbsp;
				 </c:forEach>
			 </div>		
		 </form>	
	 </article>
 </div>
</body>
</html>