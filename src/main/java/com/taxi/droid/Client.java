package com.taxi.droid;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Client {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long idclient; // Identifiant formation (Clé primaire)
	
	private String nom; 
	private String prenom;
	private String login;
	private String mdp;
	
	// Getters et Setters
	public Long getId() {
		return idclient;
	}
	public void setId(Long id) {
		this.idclient = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getMdp() {
		return mdp;
	}
	public void setMdp(String mdp) {
		this.mdp = mdp;
	}
	
	// Constructeur
	public Client() {
		super();
	}
	public Client(long formationId) {
		super();
		this.idclient = formationId;
	}
}
