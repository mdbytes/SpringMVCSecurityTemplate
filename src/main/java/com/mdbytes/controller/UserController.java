package com.mdbytes.controller;

import com.mdbytes.model.Role;
import com.mdbytes.model.UserEntity;
import com.mdbytes.service.RoleService;
import com.mdbytes.service.UserService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class UserController {

    private UserService userService;

    private PasswordEncoder passwordEncoder;

    private RoleService roleService;

    @Autowired
    public UserController(UserService userService, PasswordEncoder passwordEncoder, RoleService roleService) {
        this.userService = userService;
        this.passwordEncoder = passwordEncoder;
        this.roleService = roleService;
    }

    @GetMapping("/admin/users")
    public String userList(Model model) {
        List<UserEntity> userEntityList = userService.findAll();
        model.addAttribute("users", userEntityList);
        return "admin/users/list";
    }

    @GetMapping("/admin/users/{username}")
    public String getUserDetail(@PathVariable("username") String username, Model model) {
        UserEntity user = userService.findByUsername(username);
        model.addAttribute("user", user);
        return "admin/users/detail";

    }


    @GetMapping("/admin/users/edit/{username}")
    public String editUserForm(@PathVariable("username") String username, Model model) {
        UserEntity user = userService.findByUsername(username);
        model.addAttribute("user", user);
        return "admin/users/edit";

    }

    @PostMapping("/admin/users/edit/{username}")
    public String processEditUserForm(@PathVariable("username") String username, @Valid @ModelAttribute("user") UserEntity user, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "admin/users/edit";
        }
        UserEntity existingUser = userService.findByUsername(username);
        existingUser.setEmail(user.getEmail());
        existingUser.setFirstName(user.getFirstName());
        existingUser.setLastName(user.getLastName());
        existingUser.setStreetAddress(user.getStreetAddress());
        existingUser.setCityAddress(user.getCityAddress());
        existingUser.setStateAddress(user.getStateAddress());
        existingUser.setZipCode(user.getZipCode());
        existingUser.setPhoneNumber(user.getPhoneNumber());
        userService.save(existingUser);
        return "redirect:/admin/users";
    }

    @GetMapping("/admin/users/password/{username}")
    public String resetPassword(@PathVariable("username") String username, Model model) {
        UserEntity user = userService.findByUsername(username);
        model.addAttribute("user", user);
        return "admin/users/password-reset";
    }

    @PostMapping("/admin/users/password/{username}")
    public String processResetPassword(@PathVariable("username") String username, @Valid @ModelAttribute("user") UserEntity user, BindingResult result) {
        if (result.hasErrors()) {
            return "admin/users/password-reset";
        }
        UserEntity existingUser = userService.findByUsername(username);
        existingUser.setPassword(passwordEncoder.encode(user.getPassword()));
        userService.save(existingUser);
        return "redirect:/admin/users";
    }

    @GetMapping("/admin/users/delete/{username}")
    public String deleteUser(@PathVariable("username") String username) {
        UserEntity user = userService.findByUsername(username);
        userService.delete(user);
        return "redirect:/admin/users";
    }


    @GetMapping("/admin/users/role/{username}")
    public String setUserRole(@PathVariable("username") String username, Model model) {
        UserEntity user = userService.findByUsername(username);
        model.addAttribute("user", user);
        return "admin/users/assign-role";
    }

    @PostMapping("/admin/users/role/{username}")
    public String processUserRole(@PathVariable("username") String username, @RequestParam("userRole") String userRole) {
        UserEntity existingUser = userService.findByUsername(username);
        Role newRole = roleService.findByName(userRole);
        existingUser.getRoles().add(newRole);
        // Remove existing roles
        for (Role role : existingUser.getRoles()) {
            if (!role.equals(newRole)) {
                existingUser.getRoles().remove(role);
            }
        }
        userService.save(existingUser);
        return "redirect:/admin/users";
    }

    @GetMapping("/users/profile")
    public String displayUserProfile(Model model) {
        UserEntity user = userService.getCurrentUser();
        model.addAttribute("user", user);
        return "admin/users/detail";

    }

    @GetMapping("/users/profile/update")
    public String displayUpdateUserProfile(Model model) {
        UserEntity user = userService.getCurrentUser();
        model.addAttribute("user", user);
        return "admin/users/edit-current-user";
    }

    @PostMapping("/users/profile/update/{username}")
    public String processUserUpdateForm(@PathVariable("username") String username, @Valid @ModelAttribute("user") UserEntity user, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "admin/users/edit";
        }

        UserEntity existingUser = userService.findByUsername(username);
        existingUser.setEmail(user.getEmail());
        existingUser.setFirstName(user.getFirstName());
        existingUser.setLastName(user.getLastName());
        existingUser.setStreetAddress(user.getStreetAddress());
        existingUser.setCityAddress(user.getCityAddress());
        existingUser.setStateAddress(user.getStateAddress());
        existingUser.setZipCode(user.getZipCode());
        existingUser.setPhoneNumber(user.getPhoneNumber());
        userService.save(existingUser);
        return "redirect:/users/profile";
    }


}

