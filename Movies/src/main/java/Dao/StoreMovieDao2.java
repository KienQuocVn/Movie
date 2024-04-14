package Dao;

import java.util.List;

import javax.persistence.EntityManager;

import Model.StoreMovie2;
import Utils.JpaUtils;

public class StoreMovieDao2 extends DaoWozeric<StoreMovie2, String> {

	@Override
	public void Insert(StoreMovie2 entity) {
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
	public void Update(StoreMovie2 entity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void Delete(String Key) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<StoreMovie2> FindAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public StoreMovie2 FindByID(String Key) {
		// TODO Auto-generated method stub
		return null;
	}

}
