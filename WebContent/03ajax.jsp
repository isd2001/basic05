<%-- 03ajax.jsp --%>

<%@ page import = "beans.MockDao" %>
<%@ page language="java" contentType="text/plain; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>


<% 
	String id =request.getParameter("id");
	MockDao mDao = new MockDao();
	boolean f = mDao.exist(id);
	out.print(f);
	
	
%>