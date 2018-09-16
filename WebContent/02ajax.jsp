<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<% 
	System.out.println("received..");
	if(Math.random()>0.5){
		out.print(true);
	}else {
		out.print(false);
	}
%>