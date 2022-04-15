<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<title>게시판 목록</title>
</head>


<body>
	<form action="regist" method="get">
		<table border="1">
			<tr>
				<td width="70">
					<p align="center">글번호</p>
				</td>
				<td width="100">
					<p align="center">제목</p>
				</td>
				<td width="100">
					<p align="center">작성자</p>
				</td>
				<td width="150">
					<p align="center">작성일</p>
				</td>
				<td width="70">
					<p align="center">조회수</p>
				</td>
			</tr>

			<c:forEach items="${list}" var="boardVO">
				<tr>
					<td>${boardVO.bno}</td>
					<td><a href='/fkr/read?bno=${boardVO.bno}'>${boardVO.title}</a></td>
					<td>${boardVO.writer}</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd" value="${boardVO.regdate}" /></td>
					<td><span class="badge bg-red">${boardVO.viewcnt}</span></td>
				</tr>
			</c:forEach>
		</table>

		<button type="submit">글쓰기</button>
	</form>
	<%
		String session_id = (String)session.getAttribute("SessionId");
		if(session_id == null){
	%>
		<button id="loginbtn" type="button">로그인</button>
	<%
		}else{
	%>
		<button id="logoutbtn" type="button">로그아웃</button>
		<div>(<%=session_id %>)님 환영합니다. </div>
	<%
		}
	%>
		<button id="btn" type="button">회원가입</button>
</body>
<script>
	$('#btn').click(function(){
		location.href="/fkr/join";
	});
	
	$('#loginbtn').click(function(){
		location.href="/fkr/loginform";
	});
	
	$('#logoutbtn').click(function(){
		location.href="/fkr/logout";
	});
</script>


</html>