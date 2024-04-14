package Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import Model.User;
import Utils.JpaUtils;

public class UserDAO extends DaoWozeric<User, String> {
	public static void main(String[] args) {
		List<User> list = findall();
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getFullName());
		}
	}

	final String SelectAll = "SELECT o FROM User o ";
	final String sqlchecklogin = "SELECT o FROM User o Where o.UserName = :username and o.PassWord = :password ";
	final String selectByuser = "SELECT o FROM User o Where o.UserName = :username";
	final String updateUser = "UPDATE User set FullName = :FullName,PassWord = :PassWord,Email = :Email,admin = :admin "
			+ "WHERE UserName = :UserName";

	private static List<User> findall() {
		EntityManager em = JpaUtils.getEntityManager();
		TypedQuery<User> query = em.createQuery("SELECT o FROM User o ", User.class);
		List<User> list = query.getResultList();
		return list;
	}

	public User CheckLogin(String username, String pass) {
		EntityManager em = JpaUtils.getEntityManager();
		TypedQuery<User> query = em.createQuery(sqlchecklogin, User.class);
		query.setParameter("username", username);
		query.setParameter("password", pass);
		return query.getSingleResult();

	}

	@Override
	public void Insert(User entity) {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			// Insert vào CSDL
			em.persist(entity);
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();

	}

	@Override
	public void Update(User entity) {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			Query query = em.createQuery(updateUser);
			query.setParameter("FullName", entity.getFullName());
			query.setParameter("PassWord", entity.getPassword());
			query.setParameter("Email", entity.getEmail());
			query.setParameter("admin", entity.isAdmin() ? 1 : 0);
			query.setParameter("UserName", entity.getUserName());
			query.executeUpdate();
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
			System.out.println("Update thành công!");
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
			TypedQuery<User> query = em.createQuery(selectByuser, User.class);
			query.setParameter("username", Key);
			User entity = query.getSingleResult();
			em.remove(entity);
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();

	}

	@Override
	public List<User> FindAll() {
		EntityManager em = JpaUtils.getEntityManager();
		List<User> list = null;
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			// Tạo đối tượng truy vấn
			TypedQuery<User> query = em.createQuery(SelectAll, User.class);
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
	public User FindByID(String Key) {
		EntityManager em = JpaUtils.getEntityManager();
		User user = null;
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			TypedQuery<User> query = em.createQuery(selectByuser, User.class);
			query.setParameter("username", Key);
			user = query.getSingleResult();
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();
		return user;
	}

}
