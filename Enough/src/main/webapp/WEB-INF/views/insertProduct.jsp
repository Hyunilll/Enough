<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>insertProduct</title>
<script type="text/javascript">
function go_insertpr(){
	if( document.insertpr.name.value==""){ 
		alert('�̸��� �Է��ϼ���');
		document.insertpr.name.focus();	
	}else if (document.insertpr.brand.value == "") {
		alert('�귣�带 �Է��ϼ���.'); 	
		document.insertpr.brand.focus();	
	}else if (document.insertpr.quantity.value == "") {
		alert('���� �Է��ϼ���.'); 	
		document.inserpr.quantity.focus();	
	}else if (document.insertpr.price.value == "") {
		alert('������ �Է��ϼ���.'); 	
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
					<th>��ǰ�� :</th> 
					<td><input type="text" name= "name" style= "width:150px;"></td>
				</tr>
				<tr>
					<th>�귣��� :</th> 
					<td>	
						<select name="brand" style= "width:160px;">
						    <option value="">�귣��</option>
						    <option value="��������">��������</option>
						    <option value="�Ͽ콺">�Ͽ콺</option>
						    <option value="�ﺣƼī">�ﺣƼī</option>
						</select>
					</td>
					
				</tr>
				<tr>
					<th>���� :</th> 
					<td><input type="text" name="quantity" style= "width:150px;"></td>	
				</tr>
				<tr>
					<th>����( ,������) :</th> 
					<td><input type="text" name="price" style= "width:150px;"></td>
				</tr>
			</table>
		</form>
		<div>
			<input type="button" value="��ǰ���" onclick="go_insertpr()">
			<input type="button" value="�������" onclick="location.href='/'">
		</div> 
	</article>
</div>
</body>
</html>