package com.sh.test;

import java.io.IOException;

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
//import com.tenco.todo.dto.CategoryDTO;

@WebServlet("/orderTest")
public class OrderTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public OrderTest() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		OrderDAO orderDAO = new OrderDAO();
		ArrayList<OrderDTO> orderList = null;
		String action = request.getParameter("action");
		if ("select".equals(action)) {
			orderList = orderDAO.selectOrder();
			request.setAttribute("list", orderList);
			RequestDispatcher dispatcher = request.getRequestDispatcher("order.jsp");
			dispatcher.forward(request, response);
		} else if ("edit".equals(action)) {
			orderList = orderDAO.selectOrder();
			request.setAttribute("list", orderList);
			RequestDispatcher dispatcher = request.getRequestDispatcher("order_delete.jsp");
			dispatcher.forward(request, response);
		} else if ("delete".equals(action)) {
			String id = request.getParameter("id");
			orderDAO.delete(Integer.parseInt(id));
			orderList = orderDAO.selectOrder();
			request.setAttribute("list", orderList);
			RequestDispatcher dispatcher = request.getRequestDispatcher("order_delete.jsp");
			dispatcher.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		// DB 에서 
		MenuDAO menuDAO = new MenuDAO();
		ArrayList<MenuDTO> orderListType = menuDAO.selectMenu();
		ArrayList<MenuDTO> getMenu = new ArrayList<MenuDTO>();
		
		//ArrayList<Integer> tempOnPrice = new ArrayList<Integer>();
		for (int i = 0; i < orderListType.size(); i++) {
			//request.getParameter(orderListType.get(i).getName());
			// 1 
			// request.getParameter("아메리카노");
			// request.getParameter("유자차");
			
			// 2 on / null 
//			String tempOn = request.getParameter("아메리카노");
//			if(tempOn != null) {
//				getMenu.add("아메리카노");
//			}
			// 3 치환 
			String tempOn = request.getParameter(orderListType.get(i).getMenu());
			if(tempOn != null) {
				MenuDTO dto = new MenuDTO(orderListType.get(i).getMenu(), orderListType.get(i).getPrice());
				getMenu.add(dto);
			}
		}
		request.setAttribute("list", getMenu);
		//request.setAttribute("price", tempOnPrice);
		RequestDispatcher dispatcher = request.getRequestDispatcher("shoppingBag.jsp");
		dispatcher.forward(request, response);
	}

}
