<%@page import="java.util.List"%>
<%@page import="com.jx372.guestbook.dao.GuestbookDao"%>
<%@page import="com.jx372.guestbook.vo.GuestbookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	List<GuestbookVO> list = new GuestbookDao().getList();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/guestbook" method="get">
	<input type="hidden" name="a" value="add">
		<table border="1" width="500">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td colspan="4"><textarea name="message" cols="60" rows="5"></textarea></td>
			</tr>
			<tr>
				<td colspan="4" align="right"><input type="submit" VALUE=" 확인 "></td>
			</tr>
		</table>
	</form>
	<br>

	<%
		int count = list.size();
		int index = 0;
		for (GuestbookVO vo : list) {
	%>
	<table width="510" border="1">
		<tr>
			<td><%=vo.getNo()%></td>
			<td><%=vo.getName()%></td>
			<td><%=vo.getDate()%></td>
			<td><a href="<%=request.getContextPath() %>/guestbook?a=deleteform&no=<%=vo.getNo()%>">삭제</a></td>
		</tr>
		<tr>
			<td colspan="4"><%=vo.getMessage().replaceAll("/n", "<br>")%></td>
		</tr>
	</table>
	<%
		}
	%>
</body>
</html>