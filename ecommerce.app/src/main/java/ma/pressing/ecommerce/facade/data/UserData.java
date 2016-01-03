package ma.pressing.ecommerce.facade.data;

public class UserData {
	private String email;
	private String completName;
	private boolean enabled;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	public String getCompletName() {
		return completName;
	}

	public void setCompletName(String completName) {
		this.completName = completName;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
}
