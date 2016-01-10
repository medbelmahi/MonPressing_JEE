package ma.pressing.ecommerce.dao.impl;

import ma.pressing.ecommerce.dao.OurServiceDao;
import ma.pressing.ecommerce.model.OurServiceModel;
import org.springframework.stereotype.Repository;

/**
 * Created by Mohamed BELMAHI on 07/01/2016.
 */
@Repository
public class DefaultOurServiceDaoImpl extends DefaultGenericDao<OurServiceModel> implements OurServiceDao {

    public DefaultOurServiceDaoImpl() {
        super(OurServiceModel.class);
    }
}
