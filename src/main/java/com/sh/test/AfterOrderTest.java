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

import com.sh.dao.OrderDAO;
import com.sh.dto.OrderDTO;

@WebServlet("/afterOrderTest")
public class AfterOrderTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AfterOrderTest() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		OrderDAO orderDAO = new OrderDAO();
		String name = request.getParameter("name");
		System.out.println(name);
		String action = request.getParameter("action");
		ArrayList<OrderDTO> orderListSelect = orderDAO.selectOrderByName(name);
		ArrayList<OrderDTO> orderList = orderDAO.selectOrder();
		response.setContentType("text/html; charset=UTF-8");
		if ("관리자".equals(name)) {
			request.setAttribute("list", orderList);
		} else {
			orderListSelect = orderDAO.selectOrderByName(name);
			request.setAttribute("list", orderListSelect);
			if (orderListSelect.size() == 0) {
				PrintWriter out = response.getWriter();
				out.print("<script>alert('주문 내역이 없어요!'); location.href='/project/orderSelectCheck.jsp'</script>");
				out.flush();
			}

		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("order.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
