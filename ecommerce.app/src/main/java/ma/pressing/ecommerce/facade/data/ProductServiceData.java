package ma.pressing.ecommerce.facade.data;

import java.util.List;

/**
 * Created by Mohamed BELMAHI on 07/01/2016.
 */
public class ProductServiceData {

    private OurServiceData ourServiceData;
    private ProductData productData;
    private List<PriceData> prices;

    public ProductData getProductData() {
        return productData;
    }

    public void setProductData(ProductData productData) {
        this.productData = productData;
    }

    public OurServiceData getOurServiceData() {
        return ourServiceData;
    }

    public void setOurServiceData(OurServiceData ourServiceData) {
        this.ourServiceData = ourServiceData;
    }

    public List<PriceData> getPrices() {
        return prices;
    }

    public void setPrices(List<PriceData> prices) {
        this.prices = prices;
    }
}
