<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>AJAX</h1>
	<p>
		open api 에서 서울시 인구 구별통계를 ajx로 긁어와서 html로 만들어보자. <br /> 주소는
		http://data.seoul.go.kr/dataList/datasetView.do?infId=419&srvType=S&serviceKind=2&currentPageNo=1
	</p>
	<button type="button" onclick="scrap();">데이터가져오기</button>
	<h3>데이터 읽어온 값</h3>
	<% for(int i=0;i<5;i++) { %>
	<ul id="rst<%=i%>"></ul>
	<%} %>
	<script>
		var scrap = function() {
			var req = new XMLHttpRequest();
			req.open("get","http://openapi.seoul.go.kr:8088/sample/xml/octastatapi419/1/5/",true);
			//var html = "<li>종로구 : 남자 79322명 / 여자 82600명</li>";
			req.onreadystatechange=function(){
				if (this.readyState==4) {
					var resp = this.responseXML;
					var row = resp.getElementsByTagName("row");
					console.log(row.length);
					var j=0;
					for (var i = 1; i < row.length; i++) {
						var l=row[i].getElementsByTagName("JACHIGU");
						var m=row[i].getElementsByTagName("NAMJA_1");
						var w=row[i].getElementsByTagName("YEOJA_1");
						var km=row[i].getElementsByTagName("NAMJA_2");
						var kw=row[i].getElementsByTagName("YEOJA_2");
						var fm=row[i].getElementsByTagName("NAMJA_3");
						var fw=row[i].getElementsByTagName("YEOJA_3");
						
						for (var k = 0; k < 1; k++) {
							console.log("local ["+k+"]=="+l[k].innerHTML);
							console.log("Man ["+k+"]=="+m[k].innerHTML);
							console.log("Women ["+k+"]=="+w[k].innerHTML);
							var local = l[k].innerHTML;
							var man = m[k].innerHTML;
							var woman = w[k].innerHTML;
							var kman = km[k].innerHTML;
							var kwoman = kw[k].innerHTML;
							var fman = fm[k].innerHTML;
							var fwoman = fw[k].innerHTML;
							
							var html = local+"> 남자 "+man+"명 , 여자 "+woman
							+"명 (합계="+(parseInt(man)+parseInt(woman))+") / [한국인] 남자 "
							+kman+"명 , 여자 "+kwoman+" 명 (합계="+(parseInt(kman)+parseInt(kwoman))+") / [외국인] 남자"
							+fman+"명 , 여자 "+fwoman+" 명 (합계="+(parseInt(fman)+parseInt(fwoman))+")" ;
							console.log(html);
							
							document.getElementById("rst"+j).innerHTML = html;
							j++;
						}
						console.log("----------");	
					}
				}
			}
			
			
			//document.getElementById("rst").innerHTML = html;
			req.send();
		};
	</script>
</body>
</html>