package Model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "StoreMovies")
public class StoreMovie2 {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Id")
	private String id;
	@Column(name = "MovieId")
	String MovieId;
	@Column(name = "UserName")
	String UserName;
	@Temporal(TemporalType.DATE)
	Date BuyDate = new Date();

	public StoreMovie2() {
		super();
	}

	public StoreMovie2(String id, String movieId, String userName, Date buyDate) {
		super();
		this.id = id;
		MovieId = movieId;
		UserName = userName;
		BuyDate = buyDate;
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

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public Date getBuyDate() {
		return BuyDate;
	}

	public void setBuyDate(Date buyDate) {
		BuyDate = buyDate;
	};

}
