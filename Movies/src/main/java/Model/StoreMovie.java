package Model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "StoreMovies", uniqueConstraints = { @UniqueConstraint(columnNames = { "MovieId", "UserName" }) })
public class StoreMovie implements Serializable {
	@Id
	@ManyToOne()
	@JoinColumn(name = "MovieId")
	Movie Movie;
	@ManyToOne()
	@JoinColumn(name = "UserName")
	User User;
	@Temporal(TemporalType.DATE)
	Date BuyDate = new Date();;

	public StoreMovie() {
		super();
	}

	public Movie getMovie() {
		return Movie;
	}

	public void setMovie(Movie movie) {
		Movie = movie;
	}

	public User getUser() {
		return User;
	}

	public void setUser(User user) {
		User = user;
	}

	public Date getBuyDate() {
		return BuyDate;
	}

	public void setBuyDate(Date buyDate) {
		BuyDate = buyDate;
	}

	public StoreMovie(Model.Movie movie, Model.User user, Date buyDate) {
		super();
		Movie = movie;
		User = user;
		BuyDate = buyDate;
	}

}
