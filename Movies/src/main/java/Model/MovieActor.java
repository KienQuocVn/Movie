package Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "MovieActors")
public class MovieActor {
	@Id
	@Column(name = "MovieId")
	private String MovieId;
	@Column(name = "ActorId")
	private String ActorId;

	public MovieActor() {
		super();
	}

	public MovieActor(String movieId, String actorId) {
		super();
		MovieId = movieId;
		ActorId = actorId;
	}

	public String getMovieId() {
		return MovieId;
	}

	public void setMovieId(String movieId) {
		MovieId = movieId;
	}

	public String getActorId() {
		return ActorId;
	}

	public void setActorId(String actorId) {
		ActorId = actorId;
	}

}
