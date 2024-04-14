package Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "MovieGenres")
public class MovieGenre {
	@Id
	@Column(name = "MovieId")
	private String MovieId;

	@Column(name = "GenreId")
	private String GenreId;

	public MovieGenre() {
		super();
	}

	public MovieGenre(String movieId, String genreId) {
		super();
		MovieId = movieId;
		GenreId = genreId;
	}

	public String getMovieId() {
		return MovieId;
	}

	public void setMovieId(String movieId) {
		MovieId = movieId;
	}

	public String getGenreId() {
		return GenreId;
	}

	public void setGenreId(String genreId) {
		GenreId = genreId;
	}

}
