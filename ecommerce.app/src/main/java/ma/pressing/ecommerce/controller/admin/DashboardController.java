package ma.pressing.ecommerce.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/admin")
public class DashboardController {

	private static String PAGE_CONNEXION_ADMIN = "pages/admin/login";

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView dashBoardLogin(@RequestParam(value = "error", required = false) final String error,
			@RequestParam(value = "logout", required = false) final String logout, final HttpServletRequest request) {

		final ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", getErrorMessage(request, "SPRING_SECURITY_LAST_EXCEPTION"));
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName(PAGE_CONNEXION_ADMIN);

		return model;
	}

	// customize the error message
	private String getErrorMessage(final HttpServletRequest request, final String key) {

		final Exception exception = (Exception) request.getSession().getAttribute(key);

		String error = "";
		if (exception instanceof BadCredentialsException) {
			error = "Email ou Mot de passe incorrect !";
		} else if (exception instanceof LockedException) {
			error = exception.getMessage();
		} else {
			exception.printStackTrace();
			error = "Votre compte est désactivé";
		}

		return error;
	}
}
