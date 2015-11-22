package ma.pressing.ecommerce.web.form.data;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

public class CustomerForm {
	
	@NotEmpty
	private String email;
	@NotEmpty
	private String password;
	@NotEmpty
	private String confirmPassword;
	@NotEmpty
	private String completName;
	
	@NotEmpty
	private String civility;
	
	@NotNull
	private AddressForm addressFrom;
	
	@NotEmpty
	private String b2b;
	
	
	
	public String getB2b() {
		return b2b;
	}

	public void setB2b(String b2b) {
		this.b2b = b2b;
	}

	public CustomerForm() {
		super();
		addressFrom = new AddressForm();
	}
	
	public boolean isNew() {
		return (this.email == null);
	}
	
	public String getCivility() {
		return civility;
	}



	public void setCivility(String civility) {
		this.civility = civility;
	}



	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	
	
	public String getCompletName() {
		return completName;
	}

	public void setCompletName(String completName) {
		this.completName = completName;
	}

	public AddressForm getAddressFrom() {
		return addressFrom;
	}
	public void setAddressFrom(AddressForm addressFrom) {
		this.addressFrom = addressFrom;
	}
	
	
	
}
