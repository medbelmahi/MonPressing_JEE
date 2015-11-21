package ma.pressing.ecommerce.service;

import java.util.List;

import ma.pressing.ecommerce.model.UserModel;

public interface UserService {
	public UserModel save(UserModel userModel);
	public UserModel edit(UserModel userModel);
	public void delete(UserModel userModel);
	public UserModel findUserById(Long idUser);
	public List<UserModel> getAllUsers();
}
