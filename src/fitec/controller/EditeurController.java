/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fitec.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fitec.dba.factory.HbnFactory;
import fitec.dba.metier.Editeur;
import fitec.dba.metier.Livre;
import fitec.service.ServiceEditeur;
import fitec.validator.EditeurValidator;

/**
 *
 * @author Fitec
 */
@Controller
@RequestMapping("/editeur")
public class EditeurController {

	@Autowired
	private HbnFactory factory;

	@Autowired
	private ServiceEditeur service;

	private static List<Editeur> e;

	@RequestMapping("/editeurs")
	public String listeEditeur(Model model) {
		e = service.liste(new Editeur());
		model.addAttribute("listEditeur", e);
		return "/editeur/editeursList";
	}

	@RequestMapping(value = "/ajoutEditeur", method = RequestMethod.GET)
	public String addEditeur(Model model) {
		model.addAttribute("editeur", new Editeur());
		return "/editeur/ajoutEditeur";
	}

	@RequestMapping(value = "/ajoutEditeur", method = RequestMethod.POST)
	public String addEditeur(Editeur editeur, BindingResult result) {

		EditeurValidator validator = new EditeurValidator();

		validator.validate(editeur, result);
		if (result.hasErrors()) {
			return "/editeur/ajoutEditeur";
		}

		service.insert(editeur);
		return "redirect:/editeur/editeurs.htm";
	}

	@InitBinder
	public void validation(WebDataBinder binder) {
		binder.setValidator(new EditeurValidator());
	}

}
