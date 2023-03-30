package com.sh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sh.dto.OrderDTO;
import com.sh.utils.DBHelper;

public class OrderDAO {
	private DBHelper dbHelper;
	private Connection conn;

	public OrderDAO() {
		dbHelper = new DBHelper();
		conn = dbHelper.getConnection();
	}

	public ArrayList<OrderDTO> selectOrder() {
		ArrayList<OrderDTO> list = new ArrayList<>();
		String strQuery = " SELECT * FROM coffeeOrder ";
		PreparedStatement pStmt = null;
		ResultSet rs = null;
		try {
			pStmt = conn.prepareStatement(strQuery);
			rs =  pStmt.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String menu = rs.getString("menu");
				int count = rs.getInt("count");
				String date = rs.getString("date");
				OrderDTO dto = new OrderDTO(id, name, menu, count, date);
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pStmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	public int delete(int id) {
		int resultCount = 0;
		String queryStr = " DELETE FROM coffeeOrder " + " WHERE id = ? ";
		PreparedStatement pStmt = null;
		try {
			pStmt = conn.prepareStatement(queryStr);
			pStmt.setInt(1, id);
			pStmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pStmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return resultCount;
	}
}
