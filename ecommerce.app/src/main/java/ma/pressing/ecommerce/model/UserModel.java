package ma.pressing.ecommerce.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "users")
@Inheritance(strategy=InheritanceType.JOINED)
public class UserModel extends AbstractModel{
	
	private static final long serialVersionUID = 5577794006290915005L;
	
	@Column(name="COMPLET_NAME")
	private String completName;
	
	@Column(name = "email", unique = true, nullable = false, length = 45)
	private String email;
	
	@Column(name = "ENABLED", nullable = false)
	private boolean enabled;
	
	@Column(name = "PASSWORD", nullable = false, length = 60)
	private String password;

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
	private Set<UserRole> userRole = new HashSet<UserRole>(0);

	public UserModel() {
		super();
	}

	public String getCompletName() {
		return completName;
	}


	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}

	public Set<UserRole> getUserRole() {
		return this.userRole;
	}

	public boolean isEnabled() {
		return this.enabled;
	}

	public void setCompletName(final String completName) {
		this.completName = completName;
	}

	public void setEmail(final String email) {
		this.email = email;
	}

	public void setEnabled(final boolean enabled) {
		this.enabled = enabled;
	}

	public void setPassword(final String password) {
		this.password = password;
	}

	public void setUserRole(final Set<UserRole> userRole) {
		this.userRole = userRole;
	}
	
}
