package ma.pressing.ecommerce.service;

import ma.pressing.ecommerce.model.UserModel;

import java.util.List;

public interface UserService {
	public UserModel save(UserModel userModel);
	public UserModel edit(UserModel userModel);
	public void delete(UserModel userModel);
	public UserModel findUserById(Long idUser);
	public List<UserModel> getAllUsers();
}