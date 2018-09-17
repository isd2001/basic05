<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="beans.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String word = request.getParameter("f");
	System.out.println(word);

	BoardDao dao= new BoardDao();
	List<Map> li = dao.getfirst(word);
	
	for(int i=0;i<li.size();i++){
		Map map = li.get(i);
		String id=(String)map.get("ID");
		String nick=(String)map.get("NAME");
	%>
		<%=id %> , <%=nick %>
<%}%>
