/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fitec.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import fitec.dba.dao.IDao;
import fitec.dba.factory.HbnFactory;
import fitec.dba.metier.User;
import fitec.service.ServiceUser;
import fitec.validator.LoginValidator;
import fitec.validator.UserValidator;

/**
 *
 * @author Fitec
 */
@Controller
@SessionAttributes(value = { "userLogin", "luser" })
@RequestMapping("/user")
public class UserController {

	private HbnFactory factory;
	private ServiceUser service;
	private IDao<User> dao;

	public IDao<User> getDao() {
		if (dao == null) {
			dao = factory.getDaoUser();
		}
		return dao;
	}

	public void setDao(IDao<User> dao) {
		this.dao = dao;
	}

	/**
	 * ******************exemple avec le model and view*********************
	 */
	// @RequestMapping(value = "/inscription",method = RequestMethod.GET)
	// public ModelAndView inscription(HttpServletRequest request)
	// {
	// request.setAttribute("user", new User());
	// ModelAndView model = new ModelAndView("inscription");
	// return model;
	// }
	@RequestMapping(value = "/inscription", method = RequestMethod.GET)
	public String inscription(Model model) {
		model.addAttribute("user", new User());
		return "/user/inscription";
	}

	@RequestMapping(value = "/inscription", method = RequestMethod.POST)
	public String inscriptionPost(User user, BindingResult result) {

		// ModelAndView model = new ModelAndView("inscription");
		// model.addObject(user);

		UserValidator userValidator = new UserValidator();

		userValidator.validate(user, result);

		if (result.hasErrors()) {
			return "/user/inscription";
		}
		dao = getDao();
		dao.insert(user);
		return "index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		// model.addAttribute("msgErr", "");
		model.addAttribute("userLogin", new User());
		return "/user/login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(@ModelAttribute("userLogin") User user, Model model, BindingResult result) {

		LoginValidator loginValidator = new LoginValidator();

		loginValidator.validate(user, result);

		if (result.hasErrors()) {
			return "/user/login";
		}
		dao = getDao();
		user = HbnFactory.authenticate(user.getEmail(), user.getPassword());
		if (user != null && user.getId() != null && user.getId() != 0) {
			model.addAttribute("userLogin", user);
			return "index";
		} else {
			result.addError(new ObjectError("user", "Login Error Wrong LOGIN/PASSWORD !"));
			model.addAttribute("msgErr", "Login/Password ERROR !");
			return "/user/login";
		}

	}

	@RequestMapping("/listeUser")
	public String users(HttpSession session, Model model) {
		User user = (User) session.getAttribute("userLogin");
		System.out.println("User ->" + user);
		if (user != null && user.getId() != null && user.getId() != 0) {
			List<User> l = getAllUser();
			model.addAttribute("luser", l);
			return "/user/listeUser";
		} else {
			return "redirect:/user/login.htm";
		}

	}

	@ModelAttribute("luser")
	public List<User> getAllUser() {
		List<User> l = service.liste(new User());
		return l;
	}

	@RequestMapping(value = "/modif", method = RequestMethod.GET)
	public String modif(@RequestParam int id, Model model, HttpSession session) {
		User u = new User();
		List<User> lu = (List<User>) session.getAttribute("luser");
		if (lu == null) {
			return "/index";
		}
		for (User user : lu) {
			if (id == user.getId()) {
				u = user;
				break;
			}
		}
		model.addAttribute("userModif", u);
		return "/user/modif";
	}

	@RequestMapping(value = "/modif", method = RequestMethod.POST)
	public String modifPost(User user) {
		dao = getDao();
		dao.update(user);
		return "redirect:/user/listeUser.htm";
	}

	@InitBinder
	public void validation(WebDataBinder binder) {
		binder.addValidators(new UserValidator());
	}

	@InitBinder
	public void validationLogin(WebDataBinder binder) {
		binder.setValidator(new LoginValidator());
	}

	public ServiceUser getService() {
		return service;
	}

	@Autowired
	public void setService(ServiceUser service) {
		this.service = service;
	}

	public HbnFactory getFactory() {
		return factory;
	}

	@Autowired
	public void setFactory(HbnFactory factory) {
		this.factory = factory;
	}

}
