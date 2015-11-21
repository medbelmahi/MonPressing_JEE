package ma.pressing.ecommerce.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import ma.pressing.ecommerce.model.enumeration.SalesApplication;

@Entity
@Table(name="ECOMMERCE_ORDERS")
public class OrderModel extends AbstractModel {

	private static final long serialVersionUID = 6632465976878747975L;
	
	@Column(name="CUSTOMER")
	private CustomerModel customer;
	
	@OneToMany(mappedBy="order", cascade=CascadeType.ALL)
	private List<OrderEntryModel> orderEntries;
	
	@Column(name="SALES_APPLICATION")
	@Enumerated(EnumType.STRING)
	private SalesApplication salesApplication;
	
	
}
