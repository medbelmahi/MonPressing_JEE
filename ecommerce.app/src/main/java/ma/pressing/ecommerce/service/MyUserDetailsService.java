package ma.pressing.ecommerce.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ma.pressing.ecommerce.dao.UserDao;
import ma.pressing.ecommerce.model.UserModel;
import ma.pressing.ecommerce.model.UserRole;

@Service("myUserDetailsService")
@Transactional
public class MyUserDetailsService implements UserDetailsService {
	
	@Autowired
	private UserDao userDao;

	private List<GrantedAuthority> buildUserAuthority(final Set<UserRole> userRoles) {

		final Set<GrantedAuthority> setAuths = new HashSet<GrantedAuthority>();

		// Build user's authorities
		for (final UserRole userRole : userRoles) {
			setAuths.add(new SimpleGrantedAuthority(userRole.getRole()));
		}

		final List<GrantedAuthority> Result = new ArrayList<GrantedAuthority>(setAuths);

		return Result;
	}

	// Converts com.mkyong.users.model.User user to
	// org.springframework.security.core.userdetails.User
	private User buildUserForAuthentication(final UserModel user, final List<GrantedAuthority> authorities) {
		return new User(user.getEmail(), user.getPassword(), user.isEnabled(), true, true, true, authorities);
	}


	public UserDao getUserDao() {
		return userDao;
	}

	@Override
	public UserDetails loadUserByUsername(final String email) throws UsernameNotFoundException {

		final UserModel user = userDao.findOneByAttribut("email", email);
		if (user != null) {
			final List<GrantedAuthority> authorities = buildUserAuthority(user.getUserRole());
			return buildUserForAuthentication(user, authorities);
		} else {
			return null;
		}

	}

	public void setUserDao(final UserDao userDao) {
		this.userDao = userDao;
	}

}