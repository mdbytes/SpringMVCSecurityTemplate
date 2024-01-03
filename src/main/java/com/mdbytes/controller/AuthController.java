package com.mdbytes.controller;

import com.mdbytes.dto.RegistrationDto;
import com.mdbytes.model.UserEntity;
import com.mdbytes.service.UserService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class AuthController {

    private UserService userService;

    @Autowired
    public AuthController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/login-user")
    public String showLogin() {
        return "auth/login";
    }

    @GetMapping("/register")
    public String getRegistrationForm(Model model) {
        RegistrationDto user = new RegistrationDto();
        model.addAttribute("user", user);
        return "auth/register";
    }

    @PostMapping("/register")
    public String processRegistrationForm(
        @Valid @ModelAttribute("user") RegistrationDto user,
        BindingResult result,
        Model model,
        RedirectAttributes redirectAttributes
    ) {
        user.setEmail(user.getUsername());
        result = registrationDuplicate(user, result);
        if (result.hasErrors()) {
            model.addAttribute("user", user);
            return "auth/register";
        }
        userService.saveUser(user);
        boolean isComplete = true;
        return "redirect:/login-user?param=success";
    }

    @PostMapping("/access-denied")
    public String accessDenied() {
        return "access-denied";
    }

    private BindingResult registrationDuplicate(RegistrationDto user, BindingResult result) {
        UserEntity existingUser = userService.findByEmail(user.getEmail());

        if (existingUser != null) {
            result.rejectValue("email", String.valueOf(402), "There is already a user with this email address.");
        }

        existingUser = userService.findByUsername(user.getUsername());

        if (existingUser != null) {
            result.rejectValue("username", String.valueOf(402), "Username is already taken.");
        }

        return result;
    }
}
