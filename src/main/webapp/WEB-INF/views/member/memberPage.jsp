<%@page import="com.hs.s1.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% MemberDTO memberDTO = (MemberDTO)request.getAttribute("DTO"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberPage</title>
</head>
<body>
	<h1>Member Page</h1>
	<h2><%=memberDTO.getName() %></h2>
	<h2><%=memberDTO.getPhone() %></h2>
	<h2><%=memberDTO.getEmail() %></h2>
</body>
</html>