package ma.pressing.ecommerce.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import ma.pressing.ecommerce.model.enumeration.CivilityType;
import ma.pressing.ecommerce.model.enumeration.CustomerGroup;

@Entity
@Table(name="ECOMMERCE_CUSTOMERS")
public class CustomerModel extends UserModel {
	private static final long serialVersionUID = -3244338753264544349L;
	
	@OneToOne
	private AddressModel addressModel;
	
	@Column(name="IS_B2B")
	private boolean b2b;
	
	@Column(name="CIVILITY")
	@Enumerated(EnumType.STRING)
	private CivilityType civility;
	
	@Column(name="CUSTOMER_GROUP")
	@Enumerated(EnumType.STRING)
	private CustomerGroup customerGroup;
	
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "customer")
	private List<OrderModel> orders = new ArrayList<OrderModel>(0);

	public AddressModel getAddressModel() {
		return addressModel;
	}

	public CivilityType getCivility() {
		return civility;
	}

	public CustomerGroup getCustomerGroup() {
		return customerGroup;
	}

	public List<OrderModel> getOrders() {
		return orders;
	}

	public boolean isB2b() {
		return b2b;
	}

	public void setAddressModel(final AddressModel addressModel) {
		this.addressModel = addressModel;
	}

	public void setB2b(final boolean b2b) {
		this.b2b = b2b;
	}

	public void setCivility(final CivilityType civility) {
		this.civility = civility;
	}

	public void setCustomerGroup(final CustomerGroup customerGroup) {
		this.customerGroup = customerGroup;
	}

	public void setOrders(final List<OrderModel> orders) {
		this.orders = orders;
	}
	
}
