/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fitec.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import fitec.dba.dao.IDao;
import fitec.dba.factory.HbnFactory;
import fitec.dba.metier.Livre;
import fitec.dba.metier.Metier;
import fitec.service.ServiceLivre;
import fitec.service.Services;
import fitec.validator.LivreValidator;

/**
 *
 * @author Fitec
 */
@Controller
@RequestMapping("/livre")
public class LivreController {

    private HbnFactory factory;
    private ServiceLivre service;
    private static List<Livre> l;

    @RequestMapping(value = "/ajoutLivre", method = RequestMethod.GET)
    public String addLivre(Model model) {
        model.addAttribute("livre", new Livre());
        return "/livre/ajoutLivre";
    }

    @RequestMapping(value = "/ajoutLivre", method = RequestMethod.GET, params = "id")
    public String addLivre(Model model, @RequestParam int id) {
        for (Metier metier : l) {
            Livre livre = (Livre) metier;
            if (livre.getId() == id) {
                model.addAttribute("livre", livre);
                break;
            }
        }
        return "/livre/ajoutLivre";
    }

    @RequestMapping(value = "/ajoutLivre", method = RequestMethod.POST)
    public String addLivre(Livre livre, BindingResult result) {

        LivreValidator validator = new LivreValidator();

        validator.validate(livre, result);
        if (result.hasErrors()) {
            return "/livre/ajoutLivre";
        }

        System.out.println("Ajout livre:"+livre);
        
        if (livre.getId() != null ) {
        	
            service.update(livre);
        } else {
            service.insert(livre);
        }
        return "redirect:/livre/lesLivres.htm";
    }

    @RequestMapping("/lesLivres")
    public String listeLivre(Model model) {

        l = service.liste(new Livre());
        model.addAttribute("listLivre", l);
        return "/livre/listeLivre";
    }

    @ModelAttribute(value = "listE")
    public List<Metier> listeEditeur() {
    	IDao dao = factory.getDaoEditeur();
        List<Metier> le = dao.selectAll();
        return le;
    }

    @ModelAttribute(value = "listA")
    public List<Metier> listeAuteur() {
    	IDao dao = factory.getDaoAuteur();
        List<Metier> la = dao.selectAll();
        return la;
    }

    @InitBinder
    public void validation(WebDataBinder binder) {
        binder.setValidator(new LivreValidator());
    }

    public HbnFactory getFactory() {
        return factory;
    }

    @Autowired
    public void setFactory(HbnFactory factory) {
        this.factory = factory;
    }

    public Services<Livre> getService() {
        return service;
    }

    @Autowired
    public void setService(ServiceLivre service) {
        this.service = service;
    }

}
