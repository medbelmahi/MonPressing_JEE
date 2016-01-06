package ma.pressing.ecommerce.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Mohamed BELMAHI on 05/01/2016.
 */
@Entity
@Table(name="ECOMMERCE_PRODUCTSERVICE")
public class ProductServiceModel extends AbstractModel{

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CODE", nullable = false)
    private OurServiceModel service;

    @OneToMany(fetch = FetchType.LAZY)
    private List<PriceModel> prices = new ArrayList<PriceModel>();

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "PRODUCT_REF", nullable = false)
    private ProductModel product;

    public OurServiceModel getService() {
        return service;
    }

    public void setService(OurServiceModel service) {
        this.service = service;
    }

    public List<PriceModel> getPrices() {
        return prices;
    }

    public void setPrices(List<PriceModel> prices) {
        this.prices = prices;
    }

    public ProductModel getProduct() {
        return product;
    }

    public void setProduct(ProductModel product) {
        this.product = product;
    }
}
