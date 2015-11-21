package ma.pressing.ecommerce.dao.impl;

import org.springframework.stereotype.Repository;

import ma.pressing.ecommerce.dao.UserRoleDao;
import ma.pressing.ecommerce.model.UserRole;

@Repository("userRoleDao")
public class DefaultUserRoleDao extends DefaultGenericDao<UserRole> implements UserRoleDao{
	
	public DefaultUserRoleDao(){
		super(UserRole.class);
	}
}
