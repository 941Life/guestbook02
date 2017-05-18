package com.jx372.web.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jx372.guestbook.action.Action;
import com.jx372.guestbook.dao.GuestbookDao;
import com.jx372.guestbook.vo.GuestbookVO;
import com.jx372.web.util.WebUtils;

public class AddAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String name = request.getParameter("name");
		String password = request.getParameter("pwd");
		String message = request.getParameter("message");
		System.out.println(name);
		System.out.println(password);
		System.out.println(message);
		GuestbookVO vo = new GuestbookVO();
		
		vo.setName(name);
		vo.setPwd(password);
		vo.setMessage(message);
		
		new GuestbookDao().insert(vo);
		
		WebUtils.redirect(request.getContextPath(), request, response);
		
		
		
	}

}
