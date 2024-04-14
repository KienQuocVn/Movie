package Dao;

import java.util.List;

import javax.persistence.EntityManager;

import Model.MovieActor;
import Utils.JpaUtils;

public class MovieActorDao extends DaoWozeric<MovieActor, String> {

	final String sqlSelectMovieByUser = "SELECT p FROM Movie m JOIN Model.MovieActor ma on m.MovieId = ma.MovieId"
			+ " where stm.UserName = :UserName";
	final String sqlselectactorByMo = "SELECT a FROM  Actor a JOIN MovieActor ma ON a.ActorId = ma.ActorId"
			+ " WHERE ma.MovieId like LIKE :idmovie";

	@Override
	public void Insert(MovieActor entity) {
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
	public void Update(MovieActor entity) {
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

			// code

			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();

	}

	@Override
	public List<MovieActor> FindAll() {
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
	public MovieActor FindByID(String Key) {
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

}
