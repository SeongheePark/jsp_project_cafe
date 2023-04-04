package com.sh.repository;

import java.util.ArrayList;

import com.sh.dto.OrderDTO;

public interface IOrderDAO {
	ArrayList<OrderDTO> selectOrder();
	ArrayList<OrderDTO> selectOrderByName(String name);
	int delete(int id);
	int save(String name, String menu, int count);
}
