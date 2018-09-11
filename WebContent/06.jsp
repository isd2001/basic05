<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="<%=application.getContextPath()%>/js/default.js"></script>
<title>자바스크립트</title>
</head>
<body>
	<h1>자바스크립트</h1>
	<p>
		만약, 함수나 , 객체를 여러곳에서 써야 된다면 .. 이걸 매번 작성할 필요는 없고
		독립 js 파일로 만들어두고 연동해서 사용할수 있다.
	</p>
	<script>
		var t=new Array();
		console.log(t);
		//t[t.length]=45612;
		
		//console.log(t);
		var s=new Sphere(121);
		var p=new s.volume();
		//console.log(p);
		//console.log(format(p));
		//console.log(format(45612));			// 45,612
		//console.log(format(12));			// 12
		console.log(format(2015121));		// 2,015,121
	</script>
	
	

</body>
</html>