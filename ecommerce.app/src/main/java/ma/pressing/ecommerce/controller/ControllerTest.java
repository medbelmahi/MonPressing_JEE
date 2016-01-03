package ma.pressing.ecommerce.controller;

import ma.pressing.ecommerce.model.CustomerModel;
import ma.pressing.ecommerce.model.UserModel;
import ma.pressing.ecommerce.model.UserRole;
import ma.pressing.ecommerce.service.CustomerService;
import ma.pressing.ecommerce.service.UserRoleService;
import ma.pressing.ecommerce.service.UserService;
import ma.pressing.ecommerce.util.PasswordEncoderGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		userRole.setRole("ROLE_B2C_CUSTOMER");
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


	@RequestMapping(value = "/getJson/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Map getIt(@PathVariable Integer id) {

		Map<String, Object> myMap = new HashMap<String, Object>();

		List<String> list = new ArrayList<String>();
		list.add(id + " : me0");
		list.add(id + " : me1");
		list.add(id + " : me2");

		myMap.put("list", list);

		Map<String, String>  myMap2 = new HashMap<String, String>();
		myMap2.put("j", "L");
		myMap2.put("o", "M");

		myMap.put("map", myMap2);

		return myMap;
	}


	@RequestMapping(value = "/getJson/person", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Person getIt(@RequestBody Person person) {

		return person;
	}

	@RequestMapping(value = "/getJson/person/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Person getPerson(@PathVariable Integer id) {
		Person person = new Person();
		person.setAge(id);
		person.setName("Here");
		return person;
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
