package Dao;

import java.util.List;

import javax.persistence.EntityManager;

import Model.Genre;
import Utils.JpaUtils;

public class GenreDao extends DaoWozeric<Genre, String> {

	@Override
	public void Insert(Genre entity) {
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
	public void Update(Genre entity) {
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
	public List<Genre> FindAll() {
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
	public Genre FindByID(String Key) {
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
