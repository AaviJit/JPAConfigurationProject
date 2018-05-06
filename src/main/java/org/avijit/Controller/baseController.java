package org.avijit.Controller;


import org.avijit.DAO.UserRepository;
import org.avijit.Domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.List;

@Controller
public class baseController {

    @Autowired
    UserRepository userRepository;

    @RequestMapping("/")
    public String homePage() {
        System.out.println(userRepository.findAll());
        return "HomePage";
    }

    @RequestMapping("/register")
    public String register(Model model) {
        model.addAttribute(new User());
        return "RegistrationPage";
    }

    @RequestMapping(value = "/doRegistration", method = RequestMethod.POST)
    public String doRegistration(@Valid @ModelAttribute("user") User user, BindingResult result) {
        if (result.hasErrors()) {
            return "RegistrationPage";
        } else {
            if (user.getId() ==null) {
                userRepository.save(user);
                return "redirect:/memberList";
            } else {
                User tempUser = userRepository.findOne(user.getId());
                if (!tempUser.getUserName().equals(user.getUserName()) && userRepository.existsByUserName(user.getUserName())) {
                    result.rejectValue("userName", "DuplicateKey.user.userName", "This username already exist! Try again !");
                    return "RegistrationPage";
                } else {
                    tempUser.setFirstName(user.getFirstName());
                    tempUser.setLastName(user.getLastName());
                    tempUser.setUserName(user.getUserName());
                    tempUser.setMobile(user.getMobile());
                    tempUser.setAddress(user.getAddress());
                    tempUser.setPassword(user.getPassword());
                    userRepository.save(tempUser);
                    return "redirect:/memberList";
                }
            }
        }
    }


    @RequestMapping(value = "/memberList")

    public String memberList(Model model) {
        List<User> list = userRepository.findAll();
        model.addAttribute("list", list);
        return "UserList";
    }


    @RequestMapping(value = "/deleteUser/{id}", method = RequestMethod.GET)
    public String deleteMember(@PathVariable("id") int id) {
        userRepository.delete(id);
        return "redirect:/memberList";
    }

    @RequestMapping(value = "/editUser/{id}", method = RequestMethod.GET)
    public String editUser(@PathVariable("id") int id, Model model) {
        User user = userRepository.findOne(id);
        model.addAttribute("user", user);
        return "RegistrationPage";
    }

}
