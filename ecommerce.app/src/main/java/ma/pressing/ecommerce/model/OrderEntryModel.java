package ma.pressing.ecommerce.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="ECOMMERCE_ORDER_ENTRYS")
public class OrderEntryModel extends AbstractModel {

	private static final long serialVersionUID = 1337841475330111548L;
	
	@OneToOne
	private OurServiceModel productService;
	
	@Column(name="QUANTITY")
	private Integer quantity;
	@Column(name="PRICE_VALUE")
	private BigDecimal priceValue;
	@Column(name="TOTAL_PRICE")
	private BigDecimal totalPrice;
	
	
	@ManyToOne
	private OrderModel order;


	public OurServiceModel getProductService() {
		return productService;
	}


	public void setProductService(OurServiceModel productService) {
		this.productService = productService;
	}


	public Integer getQuantity() {
		return quantity;
	}


	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}


	public BigDecimal getPriceValue() {
		return priceValue;
	}


	public void setPriceValue(BigDecimal priceValue) {
		this.priceValue = priceValue;
	}


	public BigDecimal getTotalPrice() {
		return totalPrice;
	}


	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}


	public OrderModel getOrder() {
		return order;
	}


	public void setOrder(OrderModel order) {
		this.order = order;
	}
	
	
}
