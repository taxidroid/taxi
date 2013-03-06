package com.taxi.droid;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Reservation {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long idreservation; // Identifiant formation (Clé primaire)

	private String latitude;
	private String longitude;
//	@ManyToOne(fetch = FetchType.LAZY)
	private Long client_idclient;
	private String mdp;

	// Getters et Setters
	public Long getId() {
		return idreservation;
	}

	public void setId(Long id) {
		this.idreservation = id;
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
	public Long getIdclient() {
		return client_idclient;
	}

	public void setIdclient(Long id) {
		this.client_idclient = id;
	}

	// Constructeur
	public Reservation() {
		super();
	}
}
