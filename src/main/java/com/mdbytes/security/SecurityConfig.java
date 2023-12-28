package com.mdbytes.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {

    private CustomUserDetailsService userDetailsService;

    private CustomAuthenticationSuccessHandler customAuthenticationSuccessHandler;

    @Autowired
    public SecurityConfig(
        CustomUserDetailsService userDetailsService,
        CustomAuthenticationSuccessHandler customAuthenticationSuccessHandler
    ) {
        this.userDetailsService = userDetailsService;
        this.customAuthenticationSuccessHandler = customAuthenticationSuccessHandler;
    }

    @Bean
    public static PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
            .csrf(csrf -> csrf.disable())
            .authorizeHttpRequests(configurer ->
                configurer
                    .requestMatchers("/admin/users/**")
                    .hasAuthority("ADMIN")
                    .requestMatchers("/users/**")
                    .authenticated()
                    .requestMatchers(
                        "/styles/**",
                        "/js/**",
                        "/images/**",
                        "/",
                        "/about",
                        "/contact",
                        "/pricing",
                        "/faq",
                        "/news/**",
                        "/register",
                        "/login/**"
                    )
                    .permitAll()
            )
            .formLogin(form ->
                form
                    .loginPage("/login-user")
                    .loginProcessingUrl("/login")
                    .successHandler(customAuthenticationSuccessHandler)
                    .failureUrl("/login-user?error=true")
                    .permitAll()
            )
            .logout(logout -> logout.logoutUrl("/logout").permitAll())
            .exceptionHandling(configurer -> configurer.accessDeniedPage("/access-denied"));

        return http.build();
    }

    public void configure(AuthenticationManagerBuilder builder) throws Exception {
        builder.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
    }
}
