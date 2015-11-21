package ma.pressing.ecommerce.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ma.pressing.ecommerce.model.CustomerModel;
import ma.pressing.ecommerce.model.UserModel;
import ma.pressing.ecommerce.model.UserRole;
import ma.pressing.ecommerce.service.CustomerService;
import ma.pressing.ecommerce.service.UserRoleService;
import ma.pressing.ecommerce.service.UserService;
import ma.pressing.ecommerce.util.PasswordEncoderGenerator;

@Controller
@RequestMapping("/newTest")
public class ControllerTest {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private UserRoleService userRoleService;
	
	
	@RequestMapping(value = "/me/{email}", method = RequestMethod.GET)
	public String newView(@PathVariable("email") String email){
		
		System.out.println("here we are !!");
		
		CustomerModel user = new CustomerModel();
		if(email != ""){
			user.setEmail(email);
		}else{
			user.setEmail("mohamed.belmahii@gmail.com");
		}
		user.setPassword(PasswordEncoderGenerator.getHashedPassword("123456"));
		user.setEnabled(true);
		
		user = customerService.save(user);
		
		UserRole userRole = new UserRole();
		userRole.setUser(user);
		userRole.setRole("ROLE_USER");
		userRole = userRoleService.save(userRole);
		
		UserRole userRole2 = new UserRole();
		userRole2.setUser(user);
		userRole2.setRole("ROLE_ADMIN");
		
		userRole2 = userRoleService.save(userRole2);
		
		System.out.println("user id : "+user.getId()+"\trole id : "+userRole.getId());
		
		return "index";
	}
	
	
	
	@RequestMapping(value="/users", method = RequestMethod.GET)
	public String getAllUsers(){
		
		List<UserModel> users = userService.getAllUsers();
		
		for(UserModel user : users){
			System.out.println("email : "+user.getEmail());
		}
		
		List<UserRole> userRoles = userRoleService.getAllUserRoles();
		
		for(UserRole userRole : userRoles){
			System.out.println("role : " + userRole.getRole());
		}
		
		return "index";
	}



	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}



	public UserRoleService getUserRoleService() {
		return userRoleService;
	}



	public void setUserRoleService(UserRoleService userRoleService) {
		this.userRoleService = userRoleService;
	}

	
	
}
