<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
</head>

<%
	String session_id = (String)session.getAttribute("SessionId");
	if(session_id == null){
		out.print("<script>");
		out.print("alert('로그인이 필요합니다.');");
		out.print("history.back(-1)");
		out.print("</script>");
	}
	
%>

<body>
	<form method="post">
		<table border="1">
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" size="15"  /></td>
			</tr>
			
			<tr>
				<td>작성자</td>
				<td><input type="text" name="writer" size="15" /></td>
			</tr>
			
			<tr>
				<td colspan="2">내용</td>
			</tr>
			
			<tr>
				<td colspan="2"><textarea rows="20" cols="50" name="content"></textarea></td>
			</tr>
			
			<tr>
				<td colspan="2"><button type="submit">등록</button></td>
			</tr>
			
		</table>
	</form>

</body>

</html>

