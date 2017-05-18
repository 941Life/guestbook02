package com.jx372.web.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jx372.guestbook.action.Action;
import com.jx372.guestbook.dao.GuestbookDao;
import com.jx372.guestbook.vo.GuestbookVO;
import com.jx372.web.util.WebUtils;

public class DeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String no = request.getParameter("no");
		String password = request.getParameter("pwd");
		System.out.println(no);
		System.out.println(password);
		GuestbookVO vo = new GuestbookVO();
		
		vo.setNo(Integer.parseInt(no));
		vo.setPwd(password);
		
		new GuestbookDao().delete(vo);
		
		WebUtils.redirect(request.getContextPath(), request, response);
		
		
	}

}
