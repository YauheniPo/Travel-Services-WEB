package by.htp.travelserviceWEB.entity.hotel;

import java.io.Serializable;

public class Hotel implements Serializable {
	
	private Integer hotelId;
	private String title;
	private String stars;
	private String address;
	
	public Hotel() {}

	public Hotel(Integer hotelId, String title, String stars, String address) {
		this.hotelId = hotelId;
		this.title = title;
		this.stars = stars;
		this.address = address;
	}

	public Integer getHotelId() {
		return hotelId;
	}

	public void setHotelId(Integer hotelId) {
		this.hotelId = hotelId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStars() {
		return stars;
	}

	public void setStars(String stars) {
		this.stars = stars;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
}