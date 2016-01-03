package ma.pressing.ecommerce.service;

import org.springframework.security.core.userdetails.UserDetailsService;

/**
 * Created by Night Fox on 12/27/2015.
 */
public interface MyUserDetailsService extends UserDetailsService {
    public String getCurrentUserName();
}
