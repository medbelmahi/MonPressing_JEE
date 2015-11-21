package ma.pressing.ecommerce.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class PasswordEncoderGenerator {
	
	public static String getHashedPassword(String password){
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPassword = passwordEncoder.encode(password);

		System.out.println(hashedPassword);
		
		return hashedPassword;
	}
}
