/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fitec.validator;


import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import fitec.dba.metier.User;

/**
 *
 * @author Fitec
 */
public class LoginValidator implements Validator {

    @Override
    public boolean supports(Class<?> type) {
        return (type.isAssignableFrom(User.class)|| type.getTypeName().equals("java.util.ArrayList")) ;
    }

    @Override
    public void validate(Object o, Errors errors) {
        User u = (User) o;
        ValidationUtils.rejectIfEmpty(errors, "email", "", "l'email ne doit pas être vide");
        ValidationUtils.rejectIfEmpty(errors, "password", "", "le nom ne doit pas être vide");
    }

}

/*
 * /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*package fitec.validator;

import java.util.List;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import fitec.dba.metier.User;

/**
 *
 * @author Fitec
 */
/*public class UserValidator implements Validator {

    @Override
    public boolean supports(Class<?> type) {
        return ( type.isAssignableFrom(User.class) || type.getTypeName().equals("java.util.ArrayList") );
    }

    @Override
    public void validate(Object o, Errors errors) {
        User u = (User) o;
//        if(u.getNom().length()< 2)
//        {
//            errors.rejectValue("nom", "","vous devez mettre au moins 2 lettres!!");
//        }
        ValidationUtils.rejectIfEmpty(errors, "email", "", "l'email ne doit pas être vide");
        ValidationUtils.rejectIfEmpty(errors, "password", "", "le nom ne doit pas être vide");
    }

}

 */
