<%--
	사용자가 input에 받을 사람 아이디를 적어나가면 ,ajax로 해당 글자로 시작하는 id 값을 가진 account정보를
	가지고 와서 밑에 some 이라는 id를 붙여둔 곳에 option 으로 설정해주기.
	
	가지고 오는건 객체배열 형태의 json string 
	ajax 받아주는곳에서 처리해야될 sql 문은 select * from account where id like ?   
																	? word+"%" 
 --%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="beans.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body style="text-align: center;">
	<h2>쪽지 전송</h2>
	<p style="font-size: small;">
		수신자 아이디와 함께 보낼 메세지를 설정해 주세요 ! <br/>
	</p>
	<form action="" autocomplete="off">
		<p>
			<b>수신자 > </b>
			<input type="text" list="some" style="padding:3px" id="f" onkeyup="checkid();"/>
			<datalist id="some">
				<option value="mocking">
				윤형호(남)
				</option>
				
			</datalist>
		</p>
		<p>
			<textarea style="width: 247px; height: 200px;"></textarea>
		</p>
	</form>
	<script>
		
	
		var checkid=function(){
			var req = new XMLHttpRequest();
			req.open("get", "10ajax.jsp", true);
			req.onreadystatechange= function() {
				if(this.readyState == 4) {
					var obj = JSON.parse(this.responseText);
					for (var i = 0; i < obj.length; i++) {
						
					}
		}
	</script>
	
	
</body>
</html>