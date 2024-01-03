package com.mdbytes.service;

import com.mdbytes.model.Role;

public interface RoleService {

    void delete(Role role);

    Role findByName(String userRole);
}
