<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
  <style type="text/css">
	#wrap{margin:100px auto; width: 700px; min-height: 500px}
  </style>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="/third_prj/resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="/third_prj/resources/css/font.css"/>
  <title>계정 탈퇴 </title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
  <script type="text/javascript">
  	$(function() {
  		<c:if test="${ failFlag }">
  			alert("탈퇴처리에 실패했습니다. 비밀번호를 확인해주세요");
  		</c:if>
  		
  		$("#outBtn").click(function() {
  			var pass = $("#pass").val();
  			
  			if (pass == "") {
  				alert("비밀번호를 입력해주세요");
  				$("#pass").focus();
  				return
  			}
  			
  			if (confirm("정말 탈퇴하시겠습니까?")) {
	  			$("#outFrm").submit();
  			}
  		});
  	});
  </script>
</head>
<body>
	<!-- header -->
	<c:import url="/WEB-INF/views/layout/navbar.jsp"/>
	<div id="wrap" >
		<form id="outFrm" action="account_out_process.do" method="post">
			<br/><br/>
			<div style="border:1px solid #D7D7D7; padding:40px"><br/><br/>
			<h1><Strong>계정 탈퇴</Strong></h1>
			<hr  color="gray" >
			<h5>계정탈퇴시 회원님이 남긴 정보는 유지됩니다. <br/>계속 탈퇴 진행하시겠습니까?</h5>
			<br/>
			<input type="password" id="pass" name="pass" class="form-control" 
				aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"
				placeholder="비밀번호 입력">
			<br/>
			<br/>
			<br/>
		  <a class="btn btn-secondary btn-lg" href="#void" role="button" onclick="location.href='user_modify_menu.do'">돌아가기</a>&nbsp;&nbsp;&nbsp;&nbsp;
		  <a class="btn btn-secondary btn-lg" href="#void" role="button" id="outBtn">탈퇴하기</a>
		  </div>
		</form>
	</div>
	
	<!-- footer -->
	<c:import url="/WEB-INF/views/layout/footer.jsp"></c:import>
	
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="/third_prj/resources/js/popper.min.js" ></script>
  <script src="/third_prj/resources/js/bootstrap.min.js" ></script>
</body>
</html>