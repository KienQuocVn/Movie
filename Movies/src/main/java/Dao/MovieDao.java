package Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import Model.Movie;
import Utils.JpaUtils;

public class MovieDao extends DaoWozeric<Movie, String> {

	final String SelectAll = "SELECT o FROM Movie o ";
	final String selectBymovie = "SELECT o FROM Movie o Where o.MovieId = :MovieId";
	final String updateUser = "UPDATE Movie set Title = :Title,Poster = :Poster,Price = :Price,Release = :Release,Rating = :Rating,MovieLength = :MovieLength,Description = :Description,Active = :Active,Views = :Views,Nat = :Nat"
			+ "WHERE MovieId = :MovieId";
	final String SelectAllbyNa = "SELECT o FROM Movie o where o.Nat like :nat";
	final String SelectFind = "SELECT p FROM Movie p JOIN Model.MovieGenre mg on p.MovieId = mg.MovieId"
			+ " join Model.Genre g on mg.GenreId = g.GenreId where g.GenreName LIKE :gname";
	final String SelectKey = "SELECT o FROM Movie o where o.Nat like 'Việt Nam'";
	final String SelectAllbytitle = "SELECT o FROM Movie o where o.Title like :title";
	final String SelectActorByMovie = "	SELECT m FROM Movie m JOIN MovieActor ma on m.MovieId = ma.MovieId"
			+ "	WHERE ma.ActorId = :actorid";

	@Override
	public void Insert(Movie entity) {
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
	public void Update(Movie entity) {
		EntityManager em = JpaUtils.getEntityManager();
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			Query query = em.createQuery(updateUser);
			query.setParameter("Title", entity.getTitle());
			query.setParameter("Poster", entity.getPoster());
			query.setParameter("Price", entity.getPrice());
			query.setParameter("Release", entity.getRelease());
			query.setParameter("Rating", entity.getRating());
			query.setParameter("MovieLength", entity.getMovieLength());
			query.setParameter("Description", entity.getDescription());
			query.setParameter("Active", entity.isActive());
			query.setParameter("Views", entity.getViews());
			query.setParameter("Nat", entity.getNat());
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
			TypedQuery<Movie> query = em.createQuery(selectBymovie, Movie.class);
			query.setParameter("MovieId", Key);
			Movie entity = query.getSingleResult();
			em.remove(entity);
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();

	}

	@Override
	public List<Movie> FindAll() {
		EntityManager em = JpaUtils.getEntityManager();
		List<Movie> list = null;
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			// Tạo đối tượng truy vấn
			TypedQuery<Movie> query = em.createQuery(SelectAll, Movie.class);
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
	public Movie FindByID(String Key) {
		EntityManager em = JpaUtils.getEntityManager();
		Movie movie = null;
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			TypedQuery<Movie> query = em.createQuery(selectBymovie, Movie.class);
			query.setParameter("MovieId", Key);
			movie = query.getSingleResult();
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();
		return movie;
	}

	public List<Movie> FindAllVN() {// Phim Việt Nam
		EntityManager em = JpaUtils.getEntityManager();
		List<Movie> list = null;
		String key = "Việt Nam";
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			// Tạo đối tượng truy vấn
			TypedQuery<Movie> query = em.createQuery(SelectAllbyNa, Movie.class);
			query.setMaxResults(6);
			query.setParameter("nat", key);
			list = query.getResultList();
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();
		return list;
	}

	public List<Movie> FindAllHQ() {// Phim Hàn Quốc
		EntityManager em = JpaUtils.getEntityManager();
		List<Movie> list = null;
		String key = "Hàn Quốc";
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			// Tạo đối tượng truy vấn
			TypedQuery<Movie> query = em.createQuery(SelectAllbyNa, Movie.class);
			query.setParameter("nat", key);
			query.setMaxResults(6);
			list = query.getResultList();
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();
		return list;
	}

	public List<Movie> FindAllTQ() {// Phim Trung Quốc
		EntityManager em = JpaUtils.getEntityManager();
		List<Movie> list = null;
		String key = "Trung Quốc";
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			// Tạo đối tượng truy vấn
			TypedQuery<Movie> query = em.createQuery(SelectAllbyNa, Movie.class);
			query.setMaxResults(6);
			query.setParameter("nat", key);
			list = query.getResultList();
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();
		return list;
	}

	public List<Movie> FindAllMy() {// Phim Mỹ
		EntityManager em = JpaUtils.getEntityManager();
		List<Movie> list = null;
		String key = "Mỹ";
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			// Tạo đối tượng truy vấn
			TypedQuery<Movie> query = em.createQuery(SelectAllbyNa, Movie.class);
			query.setParameter("nat", key);
			list = query.getResultList();
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();
		return list;
	}

	public List<Movie> FindTop6() {// Top 6 Phim cao views
		EntityManager em = JpaUtils.getEntityManager();
		List<Movie> list = null;

		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			// Tạo đối tượng truy vấn
			TypedQuery<Movie> query = em.createQuery("FROM Movie m ORDER BY m.views DESC", Movie.class);
			query.setMaxResults(6);
			list = query.getResultList();
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();
		return list;
	}

	public List<Movie> FindAllTC() {// Phim Tình Cảm
		EntityManager em = JpaUtils.getEntityManager();
		List<Movie> list = null;
		String key = "Phim Tình Cảm";
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			// Tạo đối tượng truy vấn
			TypedQuery<Movie> query = em.createQuery(SelectFind, Movie.class);
			query.setParameter("gname", key);
			query.setMaxResults(6);
			list = query.getResultList();
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();
		return list;
	}

	public List<Movie> FindAllTL() {// Phim Tâm Lý
		EntityManager em = JpaUtils.getEntityManager();
		List<Movie> list = null;
		String key = "Phim Hành Động";
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			// Tạo đối tượng truy vấn
			TypedQuery<Movie> query = em.createQuery(SelectFind, Movie.class);
			query.setParameter("gname", key);
			query.setMaxResults(6);
			list = query.getResultList();
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();
		return list;
	}

	public List<Movie> FindAllHH() {// Phim Hài Hước
		EntityManager em = JpaUtils.getEntityManager();
		List<Movie> list = null;
		String key = "Phim Viễn Tưởng";
		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			// Tạo đối tượng truy vấn
			TypedQuery<Movie> query = em.createQuery(SelectFind, Movie.class);
			query.setParameter("gname", key);
			query.setMaxResults(6);
			list = query.getResultList();
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();
		return list;
	}

	public List<Movie> FindTopRand() {// Random Phim
		EntityManager em = JpaUtils.getEntityManager();
		List<Movie> list = null;

		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			// Tạo đối tượng truy vấn
			TypedQuery<Movie> query = em.createQuery("FROM Movie m ORDER BY NEWID()", Movie.class);
			query.setMaxResults(12);
			list = query.getResultList();
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();
		return list;
	}

	public Movie FindByTitle(String title) {// Random Phim
		EntityManager em = JpaUtils.getEntityManager();
		Movie movie = null;

		try {
			em.getTransaction().begin(); // Bắt đầu Transaction
			// Tạo đối tượng truy vấn
			TypedQuery<Movie> query = em.createQuery(SelectAllbytitle, Movie.class);
			query.setParameter("title", "%" + title + "%");
			movie = query.getSingleResult();
			em.getTransaction().commit(); // Chấp nhận kết quả thao tác
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback(); // Hủy thao tác
		}
		em.close();
		return movie;
	}

	public List<Movie> findThinhHanh() {// thinh Hanh
		EntityManager em = JpaUtils.getEntityManager();
		List<Movie> list = null;
		try {
			em.getTransaction().begin();
			TypedQuery<Movie> query = em.createQuery("FROM Movie m ORDER BY m.views DESC", Movie.class);
			query.setMaxResults(10);
			list = query.getResultList();
			em.getTransaction().commit();
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback();
		}
		em.close();
		return list;
	}

	public List<Movie> FindAllHD() {
		EntityManager em = JpaUtils.getEntityManager();
		List<Movie> list = null;
		String key = "Phim Hành Động";
		try {
			em.getTransaction().begin();
			TypedQuery<Movie> query = em.createQuery(SelectFind, Movie.class);
			query.setParameter("gname", key);
			list = query.getResultList();
			em.getTransaction().commit();
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback();
		}
		return list;
	}

	public List<Movie> FindMoviebyactor(String actorid) {
		EntityManager em = JpaUtils.getEntityManager();
		List<Movie> list = null;
		try {
			em.getTransaction().begin();
			TypedQuery<Movie> query = em.createQuery(SelectActorByMovie, Movie.class);
			query.setParameter("actorid", actorid);
			list = query.getResultList();
			em.getTransaction().commit();
		} catch (Exception e) {
			System.out.println(e);
			em.getTransaction().rollback();
		}
		return list;
	}

}
