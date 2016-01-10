package ma.pressing.ecommerce.facade.converter;

import ma.pressing.ecommerce.facade.DefaultPopulator;
import ma.pressing.ecommerce.facade.data.OurServiceData;
import ma.pressing.ecommerce.facade.data.PriceData;
import ma.pressing.ecommerce.facade.data.ProductData;
import ma.pressing.ecommerce.facade.data.ProductServiceData;
import ma.pressing.ecommerce.model.PriceModel;
import ma.pressing.ecommerce.model.ProductServiceModel;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Mohamed BELMAHI on 07/01/2016.
 */
@Component("productServicePopulator")
public class ProductServicePopulator implements DefaultPopulator<ProductServiceModel, ProductServiceData> {

    @Resource(name = "pricePopulator" )
    DefaultPopulator<PriceModel, PriceData> pricePopulator;

    @Override
    public void populate(final ProductServiceModel source, final ProductServiceData target) {

        List<PriceData> priceList = new ArrayList<PriceData>();
        for (PriceModel priceModel : source.getPrices()) {
            PriceData priceData = new PriceData();
            pricePopulator.populate(priceModel, priceData);
            priceList.add(priceData);
        }
        target.setPrices(priceList);

        ProductData productData = new ProductData();
        productData.setProductRef(source.getProduct().getProductRef());

        OurServiceData ourServiceData = new OurServiceData();
        ourServiceData.setCode(source.getService().getCode());

    }
}
