/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package fitec.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import fitec.dba.metier.Livre;



/**
 *
 * @author Fitec
 */
public class LivreValidator implements Validator{

    @Override
    public boolean supports(Class<?> type) {
        return type.isAssignableFrom(Livre.class);
    }

    @Override
    public void validate(Object o, Errors errors) {
        ValidationUtils.rejectIfEmpty(errors, "titre", "","le titre ne doit pas être vide");
    }
    
}
