package com.sh.repository;

import java.util.ArrayList;

import com.sh.dto.MenuDTO;

public interface IMenuDAO {
	ArrayList<MenuDTO> selectMenu();
	int delete(int id);
}
