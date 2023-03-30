package com.sh.dto;

public class OrderDTO {
	private int id;
	private String name;
	private String menu;
	private int count;
	private String date;
	
	
	
	public OrderDTO(int id, String name, String menu, int count, String date) {
		super();
		this.id = id;
		this.name = name;
		this.menu = menu;
		this.count = count;
		this.date = date;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMenu() {
		return menu;
	}

	public void setMenu(String menu) {
		this.menu = menu;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "orderDTO [id=" + id + ", name=" + name + ", menu=" + menu + ", count=" + count + ", date=" + date + "]";
	}
}
