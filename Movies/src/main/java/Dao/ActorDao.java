package Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import Model.Actor;
import Utils.JpaUtils;

public class ActorDao extends DaoWozeric<Actor, String> {

	final String SelectAll = "SELECT o FROM Actor o ";
	final String selectByactor = "SELECT o FROM Actor o Where o.ActorId = :ActorId";
	final String updateUser = "UPDATE Actor set FirstName = :FirstName,LastName = :LastName,Nationality = :Nationality,Birth = :Birth,img = :img "
			+ "WHERE ActorId = :ActorId";
	final String sqlselectactorByMo = "SELECT a FROM  Actor a JOIN MovieActor ma ON a.ActorId = ma.ActorId"
			+ " WHERE ma.MovieId like :idmovie";

	@Override
	public void Insert(Actor entity) {
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
	public void Update(Actor entity) {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			Query query = em.createQuery(updateUser);
			query.setParameter("FirstName", entity.getFirstName());
			query.setParameter("LastName", entity.getLastName());
			query.setParameter("Nationality", entity.getNationality());
			query.setParameter("Birth", entity.getBirth());
			query.setParameter("img", entity.getImg());
			query.setParameter("ActorId", entity.getActorId());
			query.executeUpdate();
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
			TypedQuery<Actor> query = em.createQuery(selectByactor, Actor.class);
			query.setParameter("ActorId", Key);
			Actor entity = query.getSingleResult();
			em.remove(entity);
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();

	}

	@Override
	public List<Actor> FindAll() {
		EntityManager em = JpaUtils.getEntityManager();
		List<Actor> list = null;
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			TypedQuery<Actor> query = em.createQuery(SelectAll, Actor.class);
			list = query.getResultList();
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();
		return list;
	}

	@Override
	public Actor FindByID(String Key) {
		EntityManager em = JpaUtils.getEntityManager();
		Actor actor = null;
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			TypedQuery<Actor> query = em.createQuery(selectByactor, Actor.class);
			query.setParameter("ActorId", Key);
			actor = query.getSingleResult();
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();
		return actor;
	}

	public List<Actor> FindActors(String movieid) {
		EntityManager em = JpaUtils.getEntityManager();
		List<Actor> list = null;
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			TypedQuery<Actor> query = em.createQuery(sqlselectactorByMo, Actor.class);
			query.setParameter("idmovie", movieid);
			list = query.getResultList();
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();
		return list;
	}

}
