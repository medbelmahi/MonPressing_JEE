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

@Entity
@Table(name="ECOMMERCE_CUSTOMERS")
public class CustomerModel extends UserModel {
	private static final long serialVersionUID = -3244338753264544349L;
	
	@Column(name="CIVILITY")
	@Enumerated(EnumType.STRING)
	private CivilityType civility;
	
	@Column(name="COMPLET_NAME")
	private String completName;
	
	@Column(name="IS_B2B")
	private boolean b2b;
	
	@OneToOne
	private AddressModel addressModel;
	
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "customer")
	private List<OrderModel> orders = new ArrayList<OrderModel>(0);

	public boolean isB2b() {
		return b2b;
	}

	public void setB2b(boolean b2b) {
		this.b2b = b2b;
	}

	public AddressModel getAddressModel() {
		return addressModel;
	}

	public void setAddressModel(AddressModel addressModel) {
		this.addressModel = addressModel;
	}

	
	public String getCompletName() {
		return completName;
	}

	public void setCompletName(String completName) {
		this.completName = completName;
	}

	public CivilityType getCivility() {
		return civility;
	}

	public void setCivility(CivilityType civility) {
		this.civility = civility;
	}

	public List<OrderModel> getOrders() {
		return orders;
	}

	public void setOrders(List<OrderModel> orders) {
		this.orders = orders;
	}
	
	
	
}
