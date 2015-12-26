package ma.pressing.ecommerce.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;

import ma.pressing.ecommerce.model.enumeration.CityDeMaroc;

@Entity
@Table(name="ECOMMERCE_ADDRESSES")
public class AddressModel extends AbstractModel{



	private static final long serialVersionUID = 1115025747534825965L;
	
	@Column(name="STREET")
	private String street;
	
	//Quartier/region
	@Column(name="DSTRICT")
	private String district;
	
	@Column(name="CITY")
	@Enumerated(EnumType.STRING)
	private CityDeMaroc city;
	
	@Column(name="POST_CODE")
	private String postCode;
	
	@Column(name="TEL")
	private String tel;

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	

	public CityDeMaroc getCity() {
		return city;
	}

	public void setCity(CityDeMaroc city) {
		this.city = city;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}
	
}
