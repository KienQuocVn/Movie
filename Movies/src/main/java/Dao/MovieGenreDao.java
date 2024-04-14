package Dao;

import java.util.List;

import javax.persistence.EntityManager;

import Model.MovieGenre;
import Utils.JpaUtils;

public class MovieGenreDao extends DaoWozeric<MovieGenre, String> {

	@Override
	public void Insert(MovieGenre entity) {
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
	public void Update(MovieGenre entity) {
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
	public List<MovieGenre> FindAll() {
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
	public MovieGenre FindByID(String Key) {
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
