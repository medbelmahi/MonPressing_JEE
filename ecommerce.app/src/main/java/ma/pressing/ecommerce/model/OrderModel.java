package ma.pressing.ecommerce.model;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import ma.pressing.ecommerce.model.enumeration.OrderStatus;
import ma.pressing.ecommerce.model.enumeration.SalesApplication;

@Entity
@Table(name="ECOMMERCE_ORDERS")
public class OrderModel extends AbstractModel {

	private static final long serialVersionUID = 6632465976878747975L;
	
	@OneToMany(mappedBy="order", cascade=CascadeType.ALL)
	private List<OrderEntryModel> orderEntries;
	
	@ManyToOne(fetch = FetchType.LAZY)
	private DeliveryModeModel deliveryMode;
	@ManyToOne(fetch = FetchType.LAZY)
	private DeliveryModeModel collectingMode;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="email")
	private CustomerModel customer;
	
	@Column(name="SALES_APPLICATION")
	@Enumerated(EnumType.STRING)
	private SalesApplication salesApplication;
	@Column(name="ORDER_STATUS")
	@Enumerated(EnumType.STRING)
	private OrderStatus orderStatus;
	
	
	@Column(name="DELIVERY_COST")
	private BigDecimal deliveryCost;
	@Column(name="COLLECTING_COST")
	private BigDecimal collectingCost;
	@Column(name="TOTAL_PRICE")
	private BigDecimal TotalPrice;

	public List<OrderEntryModel> getOrderEntries() {
		return orderEntries;
	}

	public void setOrderEntries(List<OrderEntryModel> orderEntries) {
		this.orderEntries = orderEntries;
	}

	public CustomerModel getCustomer() {
		return customer;
	}

	public void setCustomer(CustomerModel customer) {
		this.customer = customer;
	}

	public SalesApplication getSalesApplication() {
		return salesApplication;
	}

	public void setSalesApplication(SalesApplication salesApplication) {
		this.salesApplication = salesApplication;
	}

	public DeliveryModeModel getDeliveryMode() {
		return deliveryMode;
	}

	public void setDeliveryMode(DeliveryModeModel deliveryMode) {
		this.deliveryMode = deliveryMode;
	}

	public DeliveryModeModel getCollectingMode() {
		return collectingMode;
	}

	public void setCollectingMode(DeliveryModeModel collectingMode) {
		this.collectingMode = collectingMode;
	}

	public BigDecimal getDeliveryCost() {
		return deliveryCost;
	}

	public void setDeliveryCost(BigDecimal deliveryCost) {
		this.deliveryCost = deliveryCost;
	}

	public BigDecimal getCollectingCost() {
		return collectingCost;
	}

	public void setCollectingCost(BigDecimal collectingCost) {
		this.collectingCost = collectingCost;
	}

	public BigDecimal getTotalPrice() {
		return TotalPrice;
	}

	public void setTotalPrice(BigDecimal totalPrice) {
		TotalPrice = totalPrice;
	}
	
}
