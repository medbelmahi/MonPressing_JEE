package ma.pressing.ecommerce.web.form.data;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

public class CustomerForm {
	
	@NotEmpty
	private String email;
	@NotEmpty
	private String password;
	@NotEmpty
	private String confirmPassword;
	@NotEmpty
	private String firstName;
	@NotEmpty
	private String lastName;
	
	@NotEmpty
	private String civility;
	
	@NotNull
	private AddressForm addressFrom;
	
	
	
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
	
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public AddressForm getAddressFrom() {
		return addressFrom;
	}
	public void setAddressFrom(AddressForm addressFrom) {
		this.addressFrom = addressFrom;
	}
	
	
	
}
