package Model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Actors")
public class Actor implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Id")
	private String id;
	@Column(name = "ActorId")
	private String ActorId;
	@Column(name = "FirstName")
	private String FirstName;
	@Column(name = "LastName")
	private String LastName;
	@Column(name = "Nationality")
	private String Nationality;
	@Column(name = "Birth")
	private Date Birth;
	@Column(name = "Img")
	private String Img;

	public Actor() {
		super();
	}

	public Actor(String id, String actorId, String firstName, String lastName, String nationality, Date birth,
			String img) {
		super();
		this.id = id;
		ActorId = actorId;
		FirstName = firstName;
		LastName = lastName;
		Nationality = nationality;
		Birth = birth;
		Img = img;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getActorId() {
		return ActorId;
	}

	public void setActorId(String actorId) {
		ActorId = actorId;
	}

	public String getFirstName() {
		return FirstName;
	}

	public void setFirstName(String firstName) {
		FirstName = firstName;
	}

	public String getLastName() {
		return LastName;
	}

	public void setLastName(String lastName) {
		LastName = lastName;
	}

	public String getNationality() {
		return Nationality;
	}

	public void setNationality(String nationality) {
		Nationality = nationality;
	}

	public Date getBirth() {
		return Birth;
	}

	public void setBirth(Date birth) {
		Birth = birth;
	}

	public String getImg() {
		return Img;
	}

	public void setImg(String img) {
		Img = img;
	}

}
