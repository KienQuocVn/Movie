package Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Genres")
public class Genre {
	@Id
	@Column(name = "GenreId")
	private String GenreId;
	@Column(name = "GenreName")
	private String GenreName;

	public Genre() {
		super();
	}

	public Genre(String genreId, String genreName) {
		super();
		GenreId = genreId;
		GenreName = genreName;
	}

	public String getGenreId() {
		return GenreId;
	}

	public void setGenreId(String genreId) {
		GenreId = genreId;
	}

	public String getGenreName() {
		return GenreName;
	}

	public void setGenreName(String genreName) {
		GenreName = genreName;
	}

}
