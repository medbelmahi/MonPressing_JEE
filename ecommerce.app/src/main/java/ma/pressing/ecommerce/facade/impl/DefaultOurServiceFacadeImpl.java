package ma.pressing.ecommerce.facade.impl;

import ma.pressing.ecommerce.facade.DefaultOurServiceFacade;
import ma.pressing.ecommerce.facade.DefaultPopulator;
import ma.pressing.ecommerce.facade.data.OurServiceData;
import ma.pressing.ecommerce.model.OurServiceModel;
import ma.pressing.ecommerce.service.OurServiceService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Mohamed BELMAHI on 09/01/2016.
 */
public class DefaultOurServiceFacadeImpl implements DefaultOurServiceFacade {

    @Autowired
    OurServiceService ourServiceService;

    @Resource(name = "ourServicePopulator")
    DefaultPopulator<OurServiceModel, OurServiceData> ourServicePopulator;

    @Override
    public List<OurServiceData> getAllServices() {

        List<OurServiceModel> ourServiceModelList = ourServiceService.getOurServices();
        List<OurServiceData> ourServiceDataList = new ArrayList<OurServiceData>();
        for (OurServiceModel ourServiceModel : ourServiceModelList) {
            OurServiceData ourServiceData = new OurServiceData();
            ourServicePopulator.populate(ourServiceModel, ourServiceData);
            ourServiceDataList.add(ourServiceData);
        }
        return ourServiceDataList;
    }
}
