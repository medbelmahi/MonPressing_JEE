package ma.pressing.ecommerce.service;

import ma.pressing.ecommerce.model.OurServiceModel;

import java.util.List;

public interface OurServiceService {
	public OurServiceModel save(OurServiceModel ourServiceModel);
	public OurServiceModel edit(OurServiceModel ourServiceModel);
	public void delete(OurServiceModel ourServiceModel);
	public OurServiceModel findOurServiceById(Long idOurService);
	public OurServiceModel getOneServiceByAttribute(String att, Object value);
	public List<OurServiceModel> getOurServices();
}