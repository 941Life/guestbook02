<%@page import="com.jx372.guestbook.dao.GuestbookDao"%>
<%@page import="com.jx372.guestbook.vo.GuestbookVO"%>

<%
	request.setCharacterEncoding("utf-8");
	
	String no = request.getParameter("no");
	System.out.println(no);
	String password = request.getParameter("pwd");
	System.out.println(password);

	GuestbookVO vo = new GuestbookVO();
	
	vo.setNo(Integer.parseInt(no));
	vo.setPwd(password);
	
	new GuestbookDao().delete(vo);
	
	response.sendRedirect("./index.jsp");
	
	
	%>