package ma.pressing.ecommerce.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import ma.pressing.ecommerce.model.enumeration.CivilityType;

@Entity
@Table(name="ECOMMERCE_CUSTOMERS")
public class CustomerModel extends UserModel {
	private static final long serialVersionUID = -3244338753264544349L;
	
	@Column(name="CIVILITY")
	@Enumerated(EnumType.STRING)
	private CivilityType civility;
	
	@Column(name="FIRST_NAME")
	private String firstName;
	
	@Column(name="LAST_NAME")
	private String lastName;
	
	@OneToOne
	private AddressModel addressModel;
	


	public AddressModel getAddressModel() {
		return addressModel;
	}

	public void setAddressModel(AddressModel addressModel) {
		this.addressModel = addressModel;
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


	public CivilityType getCivility() {
		return civility;
	}

	public void setCivility(CivilityType civility) {
		this.civility = civility;
	}	
	
}
