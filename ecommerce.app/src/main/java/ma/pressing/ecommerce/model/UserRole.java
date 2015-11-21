package ma.pressing.ecommerce.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "user_roles" , uniqueConstraints = @UniqueConstraint(columnNames = { "role", "ID" }))
public class UserRole extends AbstractModel{
	
	private static final long serialVersionUID = 8625036177917506321L;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "ID_USER", nullable = false)
	private UserModel user;
	
	private String role;

	public UserRole() {
	}

	public UserRole(UserModel userModel, String role) {
		this.user = userModel;
		this.role = role;
	}

	public UserModel getUser() {
		return this.user;
	}

	public void setUser(UserModel user) {
		this.user = user;
	}

	@Column(name = "role", nullable = false, length = 45)
	public String getRole() {
		return this.role;
	}

	public void setRole(String role) {
		this.role = role;
	}
}
