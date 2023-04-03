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
import javax.swing.JOptionPane;

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
		String name = request.getParameter("name");
		System.out.println(name);
		if ("edit".equals(action)) {
			orderList = orderDAO.selectOrderByName(name);
		} else if ("delete".equals(action)) {
			String id = request.getParameter("id");
			orderDAO.delete(Integer.parseInt(id));
			orderList = orderDAO.selectOrder();
		}
		request.setAttribute("list", orderList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("order_delete.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		OrderDAO orderDAO = new OrderDAO();
		MenuDAO menuDAO = new MenuDAO();
		String name = request.getParameter("name");
		String[] menu = request.getParameterValues("menu");
		String[] count = request.getParameterValues("count");
		ArrayList<MenuDTO> menuList = menuDAO.selectMenu();
		for (int i = 0; i < menu.length; i++) {
			orderDAO.save(name, menu[i], Integer.parseInt(count[i])); 
		}
		PrintWriter out = response.getWriter();
		out.print("<script>alert('주문 성공!'); location.href='/project/orderSelectCheck.jsp'</script>");
		out.flush();
	}

}
