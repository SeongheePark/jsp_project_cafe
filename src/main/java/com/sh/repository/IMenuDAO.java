package com.sh.repository;

import java.util.ArrayList;

import com.sh.dto.MenuDTO;

public interface IMenuDAO {
	ArrayList<MenuDTO> selectMenu();
	int delete(String menu);
	int update(int price, String menu);
	int save(String menu, int price);
}
