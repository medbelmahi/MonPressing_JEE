package ma.pressing.ecommerce.service.impl;

import ma.pressing.ecommerce.dao.OurServiceDao;
import ma.pressing.ecommerce.model.OurServiceModel;
import ma.pressing.ecommerce.service.OurServiceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Mohamed BELMAHI on 07/01/2016.
 */
@Service
public class OurServiceServiceImpl implements OurServiceService {
    @Autowired
    OurServiceDao ourServiceDao;

    @Override
    public OurServiceModel save(OurServiceModel ourServiceModel) {
        return ourServiceDao.save(ourServiceModel);
    }

    @Override
    public OurServiceModel edit(OurServiceModel ourServiceModel) {
        return ourServiceDao.edit(ourServiceModel);
    }

    @Override
    public void delete(OurServiceModel ourServiceModel) {
        ourServiceDao.delete(ourServiceModel.getId());
    }

    @Override
    public OurServiceModel findOurServiceById(Long idOurService) {
        return ourServiceDao.find(idOurService);
    }

    @Override
    public OurServiceModel getOneServiceByAttribute(String att, Object value) {
        return ourServiceDao.findOneByAttribut(att, value);
    }

    @Override
    public List<OurServiceModel> getOurServices() {
        return ourServiceDao.findAll();
    }
}
