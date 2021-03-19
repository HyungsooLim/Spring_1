<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>bankbookList</title>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">WebSiteName</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Page 1-1</a></li>
						<li><a href="#">Page 1-2</a></li>
						<li><a href="#">Page 1-3</a></li>
					</ul></li>
				<li><a href="./bankbook/bankbookList.do">Bank Book</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="./member/memberJoin.do"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="./member/memberLogin.do"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<h1>BankBook List</h1>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Name</th>
						<th>Rate</th>
						<th>Sale</th>
					</tr>
				<thead>
				<tbody>
					<!-- 반복 시작 -->
					<c:forEach items="${requestScope.list}" var="DTO">
						<tr>
							<td><a href="./bankbookSelect?bookNumber=${DTO.bookNumber}">${pageScope.DTO.bookName}</a></td>
							<td>${pageScope.DTO.bookRate}</td>
							<td>${pageScope.DTO.bookSale}</td>
						</tr>
					</c:forEach>
					<!-- 반복 끝 -->
				</tbody>
			</table>
			<a href="./bankbookAdd" class="btn btn-danger">Write</a>
		</div>
	</div>
</body>
</html>