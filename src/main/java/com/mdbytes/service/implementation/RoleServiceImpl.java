package com.mdbytes.service.implementation;

import com.mdbytes.model.Role;
import com.mdbytes.repository.RoleRepository;
import com.mdbytes.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleServiceImpl implements RoleService {

    private RoleRepository roleRepository;

    @Autowired
    public RoleServiceImpl(RoleRepository roleRepository) {
        this.roleRepository = roleRepository;
    }

    @Override
    public void delete(Role role) {
        roleRepository.delete(role);
    }

    @Override
    public Role findByName(String userRole) {
        return roleRepository.findByName(userRole);
    }
}
