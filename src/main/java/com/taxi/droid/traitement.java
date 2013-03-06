package com.taxi.droid;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class traitement
 */
public class traitement extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public traitement() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 1 : Ouverture unité de travail JPA
		// EntityManagerFactory emf =
		// Persistence.createEntityManagerFactory("demojpa");
		// EntityManager em = emf.createEntityManager();
		//
		// // 2 : Ouverture transaction
		// EntityTransaction tx = em.getTransaction();
		// tx.begin();
		//
		// // 3 : Instanciation Objet métier
		// Formation formation = new Formation("Hibernate");
		//
		// // 4 : Persistance Objet/Relationnel : création d'un enregistrement
		// en base
		// em.persist(formation);
		//
		// // 5 : Fermeture transaction
		// tx.commit();
		//
		// // 6 : Fermeture unité de travail JPA
		// em.close();
		// emf.close();
		EntityManagerFactory emf = Persistence
				.createEntityManagerFactory("demojpa");
		EntityManager em = emf.createEntityManager();
		List<Reservation> l;
		List<Taxi> l2;
		
		TypedQuery<Reservation> query = em.createQuery(
				"SELECT e FROM Reservation e", Reservation.class);
		l = query.getResultList();
		String[][] s4 = new String[100][4];
		String[] s5 = new String[100];
		for (int i = 0; i < l.size(); i++) {
			// if(!(s4[i][0].equals(null)) && !(s4[i][1].equals(null)))
			s4[i][0] = l.get(i).getId().toString();
			s4[i][1] = l.get(i).getLatitude();
			s4[i][2] = l.get(i).getLongitude();
			s4[i][3] = l.get(i).getIdclient().toString();
		}

		Formation m = emf.createEntityManager().find(Formation.class, (long) 1);
		Client c = emf.createEntityManager().find(Client.class, (long) 1);
		Reservation r = emf.createEntityManager().find(Reservation.class,
				(long) 119);
		String s = m.getTheme();
		String s2 = c.getNom();
		// String s3=r.getLatitude();
		// System.out.println(s+"  "+s2+"  "+s3);
		for (int k = 0; k < s4.length; k++) {
			if (!(s4[k][0] == null) && !(s4[k][1] == null)
					&& !(s4[k][2] == null) && !(s4[k][3] == null))
				System.out.println(s4[k][0] + " " + s4[k][1] + " " + s4[k][2]
						+ " " + s4[k][3]);
		}
		String val = (String) request.getParameter("key");
		if (val != null) {
			TypedQuery<Taxi> query2 = em.createQuery("SELECT e FROM Taxi e",
					Taxi.class);
			l2 = query2.getResultList();
			String p1="";
			String p2="";
			List<Coordonne_taxi> l4;
			for (int i = 0; i < l2.size(); i++) {
				TypedQuery<Coordonne_taxi> q = em
						.createQuery(
								"SELECT s FROM Coordonne_taxi s WHERE s.taxi_idtaxi = :fs",
								Coordonne_taxi.class);
				q.setParameter("fs", l2.get(i).getId());
				l4=q.getResultList();
				if(p1=="")
					p1=p1+l4.get((l4.size())-1).getLatitude().toString();
				else
				p1=p1+" "+l4.get((l4.size())-1).getLatitude().toString();
				if(p2=="")
					p2=p2+l4.get((l4.size())-1).getLongitude().toString();
				else
				p2=p2+" "+l4.get((l4.size())-1).getLongitude().toString();
				
				}
			System.out.println(p1+","+p2);
			request.setAttribute("erreur2", "titi");
			request.setAttribute("p1", p1);
			request.setAttribute("p2", p2);
			
		}
		String msg_erreur = "vous avez saisissez des champs vides ";
		request.setAttribute("erreur", s4);
		this.getServletContext().getRequestDispatcher("/index.jsp")
				.forward(request, response);

		emf.close();

		// EntityManagerFactory emf =
		// Persistence.createEntityManagerFactory("demojpa");
		// EntityManager em = emf.createEntityManager();
		// TypedQuery<Formation> query =
		// em.createQuery("SELECT e FROM Formation e",
		// Formation.class);
		// List<Formation> l=query.getResultList();
		// System.out.println(l.toString());

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
