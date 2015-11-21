package ma.pressing.ecommerce.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ma.pressing.ecommerce.dao.UserRoleDao;
import ma.pressing.ecommerce.model.UserRole;
import ma.pressing.ecommerce.service.UserRoleService;

@Service("userRoleService")
@Transactional
public class UserRoleServiceImpl implements UserRoleService {

	@Autowired
	private UserRoleDao userRoleDao;
	
	@Override
	public UserRole save(UserRole userRole) {
		return userRoleDao.save(userRole);
	}

	@Override
	public UserRole edit(UserRole userRole) {
		return userRoleDao.edit(userRole);
	}

	@Override
	public void delete(UserRole userRole) {
		userRoleDao.delete(userRole.getId());
	}

	@Override
	public UserRole findUserRoleById(Long iduserRole) {
		return userRoleDao.find(iduserRole);
	}

	@Override
	public List<UserRole> getAllUserRoles() {
		return userRoleDao.findAll();
	}

	public UserRoleDao getUserRoleDao() {
		return userRoleDao;
	}

	public void setUserRoleDao(UserRoleDao userRoleDao) {
		this.userRoleDao = userRoleDao;
	}

	
}
