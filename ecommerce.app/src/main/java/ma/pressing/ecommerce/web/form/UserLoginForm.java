package ma.pressing.ecommerce.web.form;

import org.hibernate.validator.constraints.NotEmpty;

public class UserLoginForm {
	
	@NotEmpty
	private String username;
	@NotEmpty
	private String password;
	
	
	
	public UserLoginForm() {
		super();
	}


	public UserLoginForm(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
