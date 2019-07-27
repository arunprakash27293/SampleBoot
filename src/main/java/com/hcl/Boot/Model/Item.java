package com.hcl.Boot.Model;

public class Item {

	private String iname;
	private int iprice;
	private int item_id;
	private String message;
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public int getItem_id() {
		return item_id;
	}
	public void setItem_id(int item_id) {
		this.item_id = item_id;
	}
	public String getIname() {
		return iname;
	}
	public void setIname(String iname) {
		this.iname = iname;
	}
	public int getIprice() {
		return iprice;
	}
	public void setIprice(int iprice) {
		this.iprice = iprice;
	}
	@Override
	public String toString() {
		return "Item [iname=" + iname + ", iprice=" + iprice + "]";
	}
	public Item() {
		
		
	}
	
	
}
