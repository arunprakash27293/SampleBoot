package com.hcl.Boot.Model;

public class Order {

	private int order_id;
	private int oitem_id;
	private int amount;
	private int quantity;
	private int  order_status;
	private String order_by;
	private String item_name;
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public int getOitem_id() {
		return oitem_id;
	}
	public void setOitem_id(int oitem_id) {
		this.oitem_id = oitem_id;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getOrder_status() {
		return order_status;
	}
	public void setOrder_status(int order_status) {
		this.order_status = order_status;
	}
	public String getOrder_by() {
		return order_by;
	}
	public void setOrder_by(String order_by) {
		this.order_by = order_by;
	}
	public Order() {
		
	}
	
	
}
