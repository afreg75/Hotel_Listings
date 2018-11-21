package co.grandcircus.hotel_search;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;





@Repository
@Transactional 
public class HotelDao {
	
	@PersistenceContext
	private EntityManager em;
	
	public List<Hotel> findAll() {
		// The SELECT clause is optional in HQL. If omitted, it's basically SELECT *.
		// When creating a a query specify the type of the results: Food.class
		// HQL queries use Java class and property names, not SQL table & column names.
		return em.createQuery("FROM Hotel order by pricePerNight", Hotel.class).getResultList();
	}
	public Hotel findById(Long id) {
		return em.find(Hotel.class, id);
	}
	
	public List<Hotel> findByCity(String city) {
		// HQL queries can have named parameters, such as :regex here.
		// HQL queries use Java class and property names, not SQL table & column names.
		return em.createQuery("From Hotel WHERE city = :city order by pricePerNight", Hotel.class)
				.setParameter("city", city)
				.getResultList();
	}
	
}
