package com.mdbytes.dto.mapper;

import com.mdbytes.dto.RegistrationDto;
import com.mdbytes.model.UserEntity;

public class UserMapper {

    public static UserEntity mapToUser(RegistrationDto dto) {
        return UserEntity
                .builder()
                .username(dto.getUsername())
                .id(dto.getId())
                .email(dto.getEmail())
                .password(dto.getPassword())
                .build();
    }
}
