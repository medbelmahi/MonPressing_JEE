package ma.pressing.ecommerce.dao.impl;

import org.springframework.stereotype.Repository;

import ma.pressing.ecommerce.dao.UserDao;
import ma.pressing.ecommerce.model.UserModel;

@Repository("userDao")
public class DefaultUserDao extends DefaultGenericDao<UserModel> implements UserDao {

	public DefaultUserDao() {
		super(UserModel.class);
	}

}
