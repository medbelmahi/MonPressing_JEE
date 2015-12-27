package ma.pressing.ecommerce.service.impl;

import ma.pressing.ecommerce.dao.UserDao;
import ma.pressing.ecommerce.model.UserModel;
import ma.pressing.ecommerce.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	
	@Override
	public UserModel save(UserModel userModel) {
		return userDao.save(userModel);
	}

	@Override
	public UserModel edit(UserModel userModel) {
		return userDao.edit(userModel);
	}

	@Override
	public void delete(UserModel userModel) {
		userDao.delete(userModel.getId());
	}

	@Override
	public UserModel findUserById(Long idUser) {
		return userDao.find(idUser);
	}

	@Override
	public List<UserModel> getAllUsers() {
		return userDao.findAll();
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	
}
