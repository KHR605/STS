<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글수정</title>
</head>

<body>
	<form action="modify" method="post">
		<table border="1">
			<tr>
				<td>글번호</td>
				<td><input type="text" name="bno" value="${boardVO.bno}"
					readonly="readonly"></td>
			</tr>

			<tr>
				<td>제목</td>
				<td><input type="text" name="title" value="${boardVO.title}"></td>
			</tr>
			
			<tr>
				<td>작성자</td>
				<td><input type="text" name="writer" size="15"
					value="${boardVO.writer}"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name=content rows="10" cols="70">${boardVO.content}</textarea></td>
			</tr>

		</table>
		<button type="submit">완료</button>
	</form>
</body>
</html>



