package ma.pressing.ecommerce.web.form.data;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Length;

public class AddressForm {
	
	@NotEmpty
	private String city;
	@NotEmpty
	private String district;
	@Length(min=5, max=5)
	private String codePostal;
	@Length(min=10, max=10)
	private String tel;
	@NotEmpty
	private String street;
	
	
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getCodePostal() {
		return codePostal;
	}
	public void setCodePostal(String codePostal) {
		this.codePostal = codePostal;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
	

}
