package by.htp.travelserviceWEB.entity.tour;

import java.io.Serializable;
import java.sql.Date;

public class TourOffer implements Serializable {
	
	private Integer offerId;
	private Tour tour;
	private Bus bus;
	private Date dateStart;
	private Date dateEnd;
	private Integer pessengersPerOrder;
	private Double price;
	private String hot;
	
	public TourOffer() {}

	public TourOffer(Integer offerId, Tour tour, Bus bus, Date dateStart, Date dateEnd, Integer pessengersPerOrder,
			Double price, String hot) {
		this.offerId = offerId;
		this.tour = tour;
		this.bus = bus;
		this.dateStart = dateStart;
		this.dateEnd = dateEnd;
		this.pessengersPerOrder = pessengersPerOrder;
		this.price = price;
		this.hot = hot;
	}

	public Integer getOfferId() {
		return offerId;
	}

	public void setOfferId(Integer offerId) {
		this.offerId = offerId;
	}

	public Tour getTour() {
		return tour;
	}

	public void setTour(Tour tour) {
		this.tour = tour;
	}

	public Bus getBus() {
		return bus;
	}

	public void setBus(Bus bus) {
		this.bus = bus;
	}

	public Date getDateStart() {
		return dateStart;
	}

	public void setDateStart(Date dateStart) {
		this.dateStart = dateStart;
	}

	public Date getDateEnd() {
		return dateEnd;
	}

	public void setDateEnd(Date dateEnd) {
		this.dateEnd = dateEnd;
	}

	public Integer getPessengersPerOrder() {
		return pessengersPerOrder;
	}

	public void setPessengersPerOrder(Integer pessengersPerOrder) {
		this.pessengersPerOrder = pessengersPerOrder;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getHot() {
		return hot;
	}

	public void setHot(String hot) {
		this.hot = hot;
	}
	
}
