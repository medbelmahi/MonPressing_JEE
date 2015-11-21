package ma.pressing.ecommerce.service;

import java.util.List;

import ma.pressing.ecommerce.model.UserRole;

public interface UserRoleService {
	public UserRole save(UserRole userRole);
	public UserRole edit(UserRole userRole);
	public void delete(UserRole userRole);
	public UserRole findUserRoleById(Long iduserRole);
	public List<UserRole> getAllUserRoles();
}
