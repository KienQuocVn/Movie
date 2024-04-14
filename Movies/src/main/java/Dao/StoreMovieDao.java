package Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import Model.Movie;
import Model.StoreMovie;
import Utils.JpaUtils;

public class StoreMovieDao extends DaoWozeric<StoreMovie, String> {
	final String sqlselctMyMovie = "SELECT o.movie FROM StoreMovie o WHERE o.user.UserName = :UserName";
	final String sqlSelectMovieByUser = "SELECT p FROM Movie p JOIN Model.StoreMovie2 stm on p.MovieId = stm.MovieId"
			+ " where stm.UserName = :UserName";
	final String selectByusermv = "SELECT o FROM StoreMovie o Where o.UserName = :username AND o.MovieId = :movieid";

	@Override
	public void Insert(StoreMovie entity) {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			em.persist(entity);
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();

	}

	@Override
	public void Update(StoreMovie entity) {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction

			// code

			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();

	}

	@Override
	public void Delete(String Key) {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction

			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();

	}

	@Override
	public List<StoreMovie> FindAll() {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction

			// code

			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();
		return null;
	}

	@Override
	public StoreMovie FindByID(String Key) {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction

			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();
		return null;
	}

	public List<Movie> FindBMovieByUser(String Key) {
		EntityManager em = JpaUtils.getEntityManager();
		List<Movie> list = null;
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			TypedQuery<Movie> query = em.createQuery(sqlSelectMovieByUser, Movie.class);
			query.setParameter("UserName", Key);
			list = query.getResultList();
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();
		return list;
	}

	public void Delete2(String Key, String Key2) {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			Query query = em.createQuery("DELETE FROM StoreMovie WHERE UserName = :username AND MovieId = :movieid ");
			query.setParameter("username", Key);
			query.setParameter("movieid", Key2);
			query.executeUpdate();
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();

	}

}
