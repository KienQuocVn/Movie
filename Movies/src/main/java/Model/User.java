package Model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Users")
public class User implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Id")
	private String id;
	@Column(name = "UserName")
	private String UserName;
	@Column(name = "Password")
	private String Password;
	@Column(name = "FullName")
	private String FullName;
	@Column(name = "Email")
	private String Email;
	@Column(name = "admin")
	private boolean Admin;

	@OneToMany(mappedBy = "User")
	List<StoreMovie> storeMovie;

	public User() {
		super();
	}

	public User(String id, String userName, String password, String fullName, String email, boolean admin,
			List<StoreMovie> storeMovie) {
		super();
		this.id = id;
		UserName = userName;
		Password = password;
		FullName = fullName;
		Email = email;
		Admin = admin;
		this.storeMovie = storeMovie;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getFullName() {
		return FullName;
	}

	public void setFullName(String fullName) {
		FullName = fullName;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public boolean isAdmin() {
		return Admin;
	}

	public void setAdmin(boolean admin) {
		Admin = admin;
	}

	public List<StoreMovie> getStoreMovie() {
		return storeMovie;
	}

	public void setStoreMovie(List<StoreMovie> storeMovie) {
		this.storeMovie = storeMovie;
	}

}
