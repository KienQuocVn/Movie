package Model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@NamedQueries({
		@NamedQuery(name = "Movie.findByKeyword", query = "SELECT DISTINCT o.Movie FROM StoreMovie o"
				+ " WHERE o.Movie.Title LIKE :keyword"),
		@NamedQuery(name = "Movie.findByUser", query = "SELECT o.Movie FROM StoreMovie o"
				+ " WHERE o.User.UserName=:id"),
		@NamedQuery(name = "Movie.findRange", query = "SELECT DISTINCT o.Movie FROM StoreMovie o"
				+ " WHERE o.BuyDate BETWEEN :min AND :max"), })

@NamedNativeQueries({
		@NamedNativeQuery(name = "Report.random10", query = "SELECT TOP 10 * FROM Videos ORDER BY newid()", resultClass = Movie.class) })

@Entity
@Table(name = "Movies")
public class Movie {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Id")
	private String id;
	@Column(name = "MovieId")
	private String MovieId;
	@Column(name = "Title")
	private String Title;
	@Column(name = "Poster")
	private String Poster;
	@Column(name = "Price")
	private double Price;
	@Column(name = "Release")
	private Date Release;
	@Column(name = "Rating")
	private float Rating;
	@Column(name = "MovieLength")
	private int MovieLength;
	@Column(name = "Description")
	private String Description;
	@Column(name = "Active")
	private boolean Active;
	@Column(name = "views")
	private int views;
	@Column(name = "Nat")
	private String Nat;

	@OneToMany(mappedBy = "Movie")
	List<StoreMovie> storeMovie;

	public Movie() {
		super();
	}

	public Movie(String id, String movieId, String title, String poster, double price, Date release, float rating,
			int movieLength, String description, boolean active, int views, String nat, List<StoreMovie> storeMovie) {
		super();
		this.id = id;
		MovieId = movieId;
		Title = title;
		Poster = poster;
		Price = price;
		Release = release;
		Rating = rating;
		MovieLength = movieLength;
		Description = description;
		Active = active;
		this.views = views;
		Nat = nat;
		this.storeMovie = storeMovie;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getMovieId() {
		return MovieId;
	}

	public void setMovieId(String movieId) {
		MovieId = movieId;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public String getPoster() {
		return Poster;
	}

	public void setPoster(String poster) {
		Poster = poster;
	}

	public double getPrice() {
		return Price;
	}

	public void setPrice(double price) {
		Price = price;
	}

	public Date getRelease() {
		return Release;
	}

	public void setRelease(Date release) {
		Release = release;
	}

	public float getRating() {
		return Rating;
	}

	public void setRating(float rating) {
		Rating = rating;
	}

	public int getMovieLength() {
		return MovieLength;
	}

	public void setMovieLength(int movieLength) {
		MovieLength = movieLength;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String description) {
		Description = description;
	}

	public boolean isActive() {
		return Active;
	}

	public void setActive(boolean active) {
		Active = active;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public String getNat() {
		return Nat;
	}

	public void setNat(String nat) {
		Nat = nat;
	}

	public List<StoreMovie> getStoreMovie() {
		return storeMovie;
	}

	public void setStoreMovie(List<StoreMovie> storeMovie) {
		this.storeMovie = storeMovie;
	}

}
