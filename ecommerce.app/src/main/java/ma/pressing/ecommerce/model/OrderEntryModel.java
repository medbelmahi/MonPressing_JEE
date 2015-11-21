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
	private ProductModel product;
	
	@Column(name="QUANTITY")
	private Integer quantity;
	@Column(name="PRICE_VALUE")
	private BigDecimal priceValue;
	@Column(name="TOTAL_PRICE")
	private BigDecimal totalPrice;
	
	
	@ManyToOne
	private OrderModel order;
}
