package com.taxi.droid;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;


@Entity
public class Taxi {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long idtaxi; // Identifiant formation (Clé primaire)
	
	private String num; 
    
	// Getters et Setters
	public Long getId() {
		return idtaxi;
	}
	public void setId(Long id) {
		this.idtaxi = id;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String nom) {
		this.num = nom;
	}
	
	
	// Constructeur
	public Taxi() {
		super();
	}
	
}
