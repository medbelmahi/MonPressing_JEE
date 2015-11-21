package ma.pressing.ecommerce.web.form.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import ma.pressing.ecommerce.service.CustomerService;
import ma.pressing.ecommerce.web.form.data.CustomerForm;

@Component("customerFormValidator")
public class CustomerFormValidator implements Validator{
	
	@Autowired
	@Qualifier("emailValidator")
	EmailValidator emailValidtor;
	
	@Autowired
	CustomerService customerService;
	
	
	@Override
	public void validate(Object target, Errors errors) {
		CustomerForm customerFrom = (CustomerForm) target;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "NotEmpty.userForm.firstName");
		
		if(!emailValidtor.valid(customerFrom.getEmail())){
			errors.reject("email", "Pattern.userForm.email");
		}
		if(customerFrom.getPassword() != null && customerFrom.getPassword().equals(customerFrom.getConfirmPassword())){
			errors.reject("confirmPassword", "Diff.userform.confirmPassword");
		}
	}


	@Override
	public boolean supports(Class<?> arg0) {
		return false;
	}


}
