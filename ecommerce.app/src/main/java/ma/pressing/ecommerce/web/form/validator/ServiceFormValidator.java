package ma.pressing.ecommerce.web.form.validator;

import ma.pressing.ecommerce.service.OurServiceService;
import ma.pressing.ecommerce.web.form.data.ServiceForm;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 * Created by Mohamed BELMAHI on 07/01/2016.
 */
@Component("serviceFormValidator")
public class ServiceFormValidator implements Validator{

    @Autowired
    OurServiceService ourServiceService;

    @Override
    public boolean supports(Class<?> aClass) {
        return ServiceForm.class.isAssignableFrom(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        ServiceForm serviceForm = (ServiceForm) o;

        if (StringUtils.isEmpty(serviceForm.getCode())) {
           errors.reject("code", "service.form.code.empty");
        }else if (ourServiceService.getOneServiceByAttribute("code", serviceForm.getCode())!=null){
            errors.reject("code", "service.form.code.already");
        }
    }
}
