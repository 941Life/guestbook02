<%@page import="com.jx372.guestbook.dao.GuestbookDao" %>
<%@page import="com.jx372.guestbook.vo.GuestbookVO" %>

<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");	
	System.out.println(name);
	String password = request.getParameter("pwd");
	System.out.println(password);
	String message = request.getParameter("message");
	System.out.println(message);
	
	GuestbookVO vo = new GuestbookVO();
	
	vo.setName(name);
	vo.setPwd(password);
	vo.setMessage(message);
	
	new GuestbookDao().insert(vo);
	
	response.sendRedirect("./index.jsp");

%>
