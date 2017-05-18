package com.jx372.web.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jx372.guestbook.action.Action;
import com.jx372.guestbook.dao.GuestbookDao;
import com.jx372.guestbook.vo.GuestbookVO;
import com.jx372.web.util.WebUtils;

public class ListAction implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		List<GuestbookVO> list = new GuestbookDao().getList();
		
		request.setAttribute("list", list);
		WebUtils.forward("/WEB-INF/index.jsp", request, response);
	}

}
