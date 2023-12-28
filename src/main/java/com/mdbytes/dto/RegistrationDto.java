package com.mdbytes.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class RegistrationDto {

    private Integer id;

    @NotEmpty
    @Email(message = "Username must be valid email address")
    private String username;

    private String email;

    @NotEmpty
    private String password;
}
