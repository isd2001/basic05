<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>자바스크립트의 배열</h1>
	<p>
		스크립트 처리중에 필요하면 , 배열객체를 사용할수 있다.
		자바스크립트의 배열은 , 자바에 비교했을때 리스트에 가까운 형태이다.
	</p>
	<script>
		var ar = new Array();	// [] 이렇게 해도 됨
		var ar2 = [1,2,45,2];			// [1,2,45,2]; > 처럼 미리 데이터를 두고 세팅할때
		
		console.log(typeof ar+"/"+typeof ar2);
		// 배열에 length 속성으로 현재 길이를 얻어내수 있다.
		console.log(ar.length + "/"+ar2.length)
		// 접근하는 방식은 똑같다 . [index] 로 접근
		console.log(ar2[ar2.length-1]);
		console.log(ar[13]);		// 없는 idx는 undefined
		// 순환 처리 하는건 , 일반 반복문(for) 를 사용해서 처리한다
		// 데이터를 input하는건 
		ar2[ar2.length]=45;
		for (var d = 30; d < 40; d++) {
			//ar[ar.length] = d;
			ar.push(d);
		}
		console.log(ar);
		console.log(ar2);
		
		// 특정 index에 데이터 변경은
		ar[4] =999;
		console.log(ar);
		
		// 데이터 삭제를 할꺼면 , 
		// splice(제어할 index,삭제할 갯수)
		ar.splice(3,2);
		console.log(ar);
		// splice(제어할 index,삭제할 갯수,추가할 데이터)
		ar.splice(1,0,"qwe",true,61.15);
		console.log(ar);
		// includes --> boolean , indexOf / lastIndexOf
		console.log(ar.indexOf(38));
		
		
		
	</script>
	
</body>
</html>