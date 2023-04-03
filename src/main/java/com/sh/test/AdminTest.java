package com.sh.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sh.dao.MenuDAO;

@WebServlet("/adminTest")
public class AdminTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminTest() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		MenuDAO menuDAO = new MenuDAO();
		String changeMenu = request.getParameter("changeMenu");
		System.out.println(changeMenu);
		String password = request.getParameter("password");
		System.out.println(password);
		String menu = request.getParameter("menu");
		int price = Integer.parseInt(request.getParameter("price"));
		PrintWriter out = response.getWriter();
		if("1004".equals(password)) {
			if ("메뉴추가".equals(changeMenu)) {
				menuDAO.save(menu, price);
				out.print("<script>alert('메뉴 추가하였습니다'); location.href='/project/menuTest' </script>");
			} else if ("메뉴수정".equals(changeMenu)) {
				menuDAO.update(price, menu);
				out.print("<script>alert('메뉴 수정하였습니다'); location.href='/project/menuTest' </script>");
			} else if ("메뉴삭제".equals(changeMenu)) {
				menuDAO.delete(menu);
				out.print("<script>alert('메뉴 삭제하였습니다'); location.href='/project/menuTest' </script>");
			}
		} else {
			out.print("<script>alert('비밀번호가 틀렸습니다!'); location.href='/project/admin.jsp' </script>");
		}
	}

}
