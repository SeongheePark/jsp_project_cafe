package com.sh.dto;

public class MenuDTO {
	private int id;
	private String menu;
	private int price;
	private int count;

	public MenuDTO(String menu) {
		this.menu = menu;
	}

	public MenuDTO(String menu, int price) {
		this.menu = menu;
		this.price = price;
	}

	public MenuDTO(String menu, int price, int count) {
		this.menu = menu;
		this.price = price;
		this.count = count;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMenu() {
		return menu;
	}

	public void setMenu(String menu) {
		this.menu = menu;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

}
