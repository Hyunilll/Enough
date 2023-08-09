// index.jsp
	function go_update1(pseq){
		// console.log(pseq+"::::pseq,"+$("#quantity_"+pseq+"").val()+$("#quantity1").val()+$("#quantity3").val());
		// quantity3 = $("#quantity3_${productVO.pseq}").val();
	 	// console.log(quantity3);
		document.frm.action = "updatepr?pseq=" + pseq; 
	    document.frm.submit();
	}
	
 	function ddd1(pseq){
		$("#test4_" + pseq).show();
		$("#test3_" + pseq).hide();
		$("#quantity1_"+ pseq).prop("disabled", false);
	} 
	
	function go_add(pseq){
		document.frm.action = "addpr?pseq=" + pseq;
		document.frm.submit();
	}
	
	function dd1(pseq){
		$("#test_" + pseq).show();
		$("#test2_" + pseq).hide();
		
		$("#quantity1_" + pseq).prop("disabled",false);
		$("#quantity2_" + pseq).prop("disabled",false);
		$("#quantity3_" + pseq).prop("disabled",false);
	}
	
	function go_deletepr(pseq){
		var con = confirm ("삭제시 재고리스트도 삭제됩니다. 삭제 하시겠습니까?");
		if(con){
			document.frm.action= "deletepr?pseq=" + pseq ;
			document.frm.submit();
		}else return;
			
	}
	function go_search1(com){
		 if( document.frm.key.value == "" ){
			alert("검색어 입력이 필수입니다");
		 	return;
		} 
		var url = com + "?page=1";  
		document.frm.action = url;
		document.frm.submit();	
	}
	function go_total1(com ){
		document.frm.key.value = "";
		document.frm.action = com + "?page=1";  
		document.frm.submit();
	}
	
	
// completeList.jsp
	function go_update(pseq){
		document.frm.action = "updatecompr?pseq=" + pseq;
	    document.frm.submit();
	}
	function dd(pseq){
		$("#test_" + pseq).show();
		$("#test2_" + pseq).hide();
		
		$("#quantity_" + pseq).prop("disabled",false);
	}
/*	function go_deletepr(pseq){
		var con = confirm ("삭제시 미송리스트도(주문) 삭제 됩니다 삭제 하시겠습니까?");
		if(con){
			document.frm.action= "deletepr?pseq=" + pseq ;
			document.frm.submit();
		}else return;		
	}*/
	function go_search(com){
		 if( document.frm.key.value == "" ){
			alert("검색어 입력이 필수입니다");
		 	return;
		} 
		var url = com + "?page=1";  
		document.frm.action = url;
		document.frm.submit();	
	}
	function go_total(com ){
		document.frm.key.value = "";
		document.frm.action = com + "?page=1";  
		document.frm.submit();
	}
	
// insertBrand.jsp
	function go_insertbr(){
		if(document.insertbr.title.value==""){
			alert('브랜드명을 입력하세요');
			document.insertbr.title.focus();
			return;
		}
		document.insertbr.action = "insertbr";
		document.insertbr.submit();
	}
	
	function go_deletebr(bseq){
		var con = confirm("정말로 삭제 하시겠습니까?");
		if (con) {
			document.insertbr.action = "deletebr?bseq=" + bseq;
			document.insertbr.submit();
		}else return;
	}


// insertProduct.jsp	
	function go_insertpr(){
		if( document.insertpr.name.value==""){ 
			alert('이름을 입력하세요');
			document.insertpr.name.focus();	
		}else if (document.insertpr.brand.value == "") {
			alert('브랜드를 입력하세요.'); 	
			document.insertpr.brand.focus();	
		}else if (document.insertpr.quantity1.value == "") {
			alert('수량 입력하세요.'); 	
			document.inserpr.quantity1.focus();	
		}else if (document.insertpr.price.value == "") {
			alert('가격을 입력하세요.'); 	
			document.insertpr.price.focus();	
		}else{
		document.insertpr.action = "insertpr";
		document.insertpr.submit();
		}
	}