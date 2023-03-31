package com.sh.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sh.dao.MenuDAO;
import com.sh.dao.OrderDAO;
import com.sh.dto.MenuDTO;
import com.sh.dto.OrderDTO;

@WebServlet("/menuTest")
public class MenuTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MenuTest() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MenuDAO menuDAO = new MenuDAO();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		ArrayList<MenuDTO> menuList = null;
		menuList = menuDAO.selectMenu();
		request.setAttribute("list", menuList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("menu.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		MenuDAO menuDAO = new MenuDAO();
		ArrayList<MenuDTO> orderListType = menuDAO.selectMenu();
		ArrayList<MenuDTO> getMenu = new ArrayList<MenuDTO>();

		for (int i = 0; i < orderListType.size(); i++) {
			String tempOn = request.getParameter(orderListType.get(i).getMenu());
			if (tempOn != null) {
				MenuDTO dto = new MenuDTO(orderListType.get(i).getMenu(), orderListType.get(i).getPrice());
				getMenu.add(dto);
			}
		}
		request.setAttribute("list", getMenu);
		RequestDispatcher dispatcher = request.getRequestDispatcher("shoppingBag.jsp");
		dispatcher.forward(request, response);
	}

}
