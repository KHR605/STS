<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글읽기</title>
</head>


<body>
	<form>
		<table border="1">
			<tr>
				<td>글번호</td>
				<td><input type="text" name="bno"
				value="${boardVO.bno}" readonly="readonly"></td>
			</tr>

			<tr>
				<td>제목</td>
				<td><input type="text" name="title"  
				value="${boardVO.title}"	readonly="readonly"></td>
			</tr>
			
			<tr>
				<td>작성자</td>
				<td> <input type="text" name="writer" size="15"
				value="${boardVO.writer}" readonly="readonly"></td>
			</tr>
			
			<tr>
				<td>내용</td>
				<td><textarea name=content rows="10" cols="70"
				 readonly="readonly">${boardVO.content}</textarea></td>
			</tr>

			<tr>
				<td colspan="2">	
				<button type="submit" formaction="modify" formmethod="get">수정</button>
				<button type="submit" formaction="remove" 
				formmethod="post">삭제</button>
				<button type="submit" formaction="listAll" 
				formmethod="get">목록</button>
				</td>
			</tr>

			
		</table>
	</form>
	
</body>

</html>

