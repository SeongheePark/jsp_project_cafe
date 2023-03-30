package com.sh.dto;

public class MenuDTO {
	private int id;
	private String menu;
	private int price;

	public MenuDTO(String menu, int price) {
		super();
		this.menu = menu;
		this.price = price;
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

}
