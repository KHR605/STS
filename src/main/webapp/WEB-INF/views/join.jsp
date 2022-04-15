<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원등록</title>
</head>
<body>
<form method="post">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" size="15"  /></td>
			</tr>
			
			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="password" size="15" /></td>
			</tr>
			
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" size="15" /></td>
			</tr>
			<tr>
				<td colspan="2"><button type="submit">등록</button></td>
			</tr>
			
		</table>
	</form>
</body>
</html>