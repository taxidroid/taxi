package com.taxi.droid;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Coordonne_taxi {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	private String latitude;
	private String longitude;
	private Long taxi_idtaxi;
	private Date date;

	// Getters et Setters
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public Long getIdtaxix() {
		return taxi_idtaxi;
	}

	public void setIdtaxi(Long id) {
		this.taxi_idtaxi = id;
	}
	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	// Constructeur
	public Coordonne_taxi(){
		// TODO Auto-generated constructor stub
	
		super();
	}
}
