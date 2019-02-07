/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tutorial.web;

import com.tutorial.domain.User;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FormBeanController {

    @RequestMapping("/showApplicationForm")
    public String showApplicationForm(@ModelAttribute("user") User user, ModelMap map, HttpServletRequest request) {

        return "applicationForm";
    }

    @RequestMapping("/saveAndViewApplicationData")
    public String saveApplicationForm(ModelMap map, @ModelAttribute("user") User user, HttpServletRequest request) {

        //Using request.getParameter()
        System.out.println("User Name :: " + user.getUserName());
        System.out.println("Gender :: " + user.getGender());
        System.out.println("Age Group :: " + user.getAgeGroup());

        return "applicationFormData";
    }

}
