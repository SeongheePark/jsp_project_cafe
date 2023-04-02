package com.sh.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sh.dto.MenuDTO;
import com.sh.dto.OrderDTO;
import com.sh.repository.IMenuDAO;
import com.sh.utils.DBHelper;

public class MenuDAO implements IMenuDAO {
	private DBHelper dbHelper;
	private Connection conn;

	public MenuDAO() {
		dbHelper = new DBHelper();
		conn = dbHelper.getConnection();
	}

	public ArrayList<MenuDTO> selectMenu() {
		ArrayList<MenuDTO> list = new ArrayList<>();
		String strQuery = " SELECT menu, price FROM menu ";
		PreparedStatement pStmt = null;
		ResultSet rs = null;
		try {
			pStmt = conn.prepareStatement(strQuery);
			rs = pStmt.executeQuery();
			while (rs.next()) {
				String menu = rs.getString("menu");
				int price = rs.getInt("price");
				MenuDTO dto = new MenuDTO(menu, price);
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

	public int delete(String menu) {
		int resultCount = 0;
		String queryStr = " DELETE FROM menu " + " WHERE menu = ? ";
		PreparedStatement pStmt = null;
		try {
			pStmt = conn.prepareStatement(queryStr);
			pStmt.setString(1, menu);
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

	public int update(int price, String menu) {
		int resultCount = 0;
		String quertyStr = " UPDATE menu " + "SET price = ? " + "WHERE menu = ? ";
		PreparedStatement pStmt = null;
		try {
			pStmt = conn.prepareStatement(quertyStr);
			pStmt.setInt(1, price);
			pStmt.setString(2, menu);
			pStmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultCount;
	}

	public int save(String menu, int price) {
		int resultCount = 0;
		String quertyStr = " INSERT INTO menu(menu, price) " + "VALUES (?, ?) ";
		PreparedStatement pStmt = null;
		try {
			pStmt = conn.prepareStatement(quertyStr);
			pStmt.setString(1, menu);
			pStmt.setInt(2, price);
			resultCount = pStmt.executeUpdate();
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