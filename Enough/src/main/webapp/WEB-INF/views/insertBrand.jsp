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
<link  rel="stylesheet" href="/css/css.css">  
    <style>
        .table-container {
            display: flex;
            flex-wrap: wrap;
            max-width: 480px; /* 최대 가로 크기 */
            margin: 0 auto; /* 중앙 정렬 */
            background :  #bbdefb;
        }

        .table-cell {
            width: 100px; /* 셀 너비 */
            text-align: center;
            margin-left: 20px; /* 셀 간격 */
        }
    </style>

</head>
<body>
<div style="width:480px; margin: 0 auto; text-align : center;">
	<h1>Brand Registration</h1>
	<article>
		 
		 <form name = "insertbr" action="insertbr" method= "post">
		 	<table style= "margin: 0 auto;">
		 		<tr>
		 			<th>브랜드명</th>
		 			<td><input type="text" name="title" style= "width:150px;" /></td>
		 		</tr>
		 	</table>
		 
			 <div style= "margin: 0 auto;  background :  #e3f2fd;">
			 	<input type="button" class="btn btn-indigo" name="" value="등록" onClick="go_insertbr()">
			 	<input type="button"  class="btn btn-indigo" value="돌아가기"onClick="location.href='/?first=y'">
			 </div>
			
			 <div class="table-container" >
		        <c:forEach items="${brandList}" var="BrandVO">
		            <div class="table-cell">
		                <input type="button" value="x" class="btn btn-indigo"
		                    onClick="go_deletebr('${BrandVO.bseq}')">
		                ${BrandVO.title}
		            </div>
		        </c:forEach>
		    </div>
		 </form>	
	 </article>
 </div>
</body>
</html>