<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String[] ar =
		"루피,조로,나미,샹디,우솝,쵸파,프랑키,브룩,로빈".split(",");
%>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트-배열</title>
</head>
<body style="text-align: center;">
	<h1>캐릭터 선택</h1>
	<small>당신의 최애캐를 선택해주세요. (다중선택가능/최대3개까지) </small>
	<p>
		<%for(int i=0; i<ar.length; i++){ %>
		<input type="checkbox" value="<%=ar[i] %>" onchange="save(this)" /><%=ar[i] %>
		<%} %>
	</p>
	<hr />
	<p>
		당신의 선택 : <br /> <span>-현재없음-</span>
	</p>
	<script>
		var list = new Array();
		
		var save = function(target) {

			var t = target.value;
			if (target.checked) {
				list.push(t);
				if (list.length > 3) {
					window.alert("최대 3명 까지 입니다.");
					if (t==list[3]) {
						target.checked=false;
					}
					var c=list.indexOf(t);
					list.splice(c,1);
				}	
			}else{
				var c=list.indexOf(t);				
				list.splice(c,1);
			}
			
			console.log(list);
			document.getElementsByTagName("span")[0].innerHTML=list;
		};//end function
	</script>
</body>
</html>


