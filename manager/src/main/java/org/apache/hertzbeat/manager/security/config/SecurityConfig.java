package org.apache.hertzbeat.manager.security.config;

import cn.hutool.captcha.generator.CodeGenerator;
import cn.hutool.core.collection.CollectionUtil;

import lombok.RequiredArgsConstructor;
import org.apache.hertzbeat.manager.filter.JwtValidationFilter;
import org.apache.hertzbeat.manager.security.SecurityConstants;

import org.apache.hertzbeat.manager.security.exception.MyAccessDeniedHandler;
import org.apache.hertzbeat.manager.security.exception.MyAuthenticationEntryPoint;
import org.apache.hertzbeat.manager.security.property.SecurityProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.annotation.web.configurers.HeadersConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

import java.security.SecureRandom;

/**
 * Spring Security 权限配置
 *
 * @author Ray
 * @since 2023/2/17
 */
@Configuration
@EnableWebSecurity
@EnableMethodSecurity
@RequiredArgsConstructor
public class SecurityConfig {

    private final MyAuthenticationEntryPoint authenticationEntryPoint;
    private final MyAccessDeniedHandler accessDeniedHandler;
    private final RedisTemplate<String, Object> redisTemplate;
    private final SecurityProperties securityProperties;



    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http

                .authorizeHttpRequests(requestMatcherRegistry ->
                        requestMatcherRegistry
                                .requestMatchers(SecurityConstants.LOGIN_PATH).permitAll()
                                .requestMatchers("/static/**", "/static/**").permitAll()
                                .anyRequest().authenticated()
                )
                .exceptionHandling(httpSecurityExceptionHandlingConfigurer ->
                        httpSecurityExceptionHandlingConfigurer
                                .authenticationEntryPoint(authenticationEntryPoint)
                                .accessDeniedHandler(accessDeniedHandler)
                )
                .sessionManagement(configurer ->
                        configurer.sessionCreationPolicy(SessionCreationPolicy.STATELESS))
                .csrf(AbstractHttpConfigurer::disable)
                .headers(headers -> headers.frameOptions(HeadersConfigurer.FrameOptionsConfig::disable))

        ;

        // 验证码校验过滤器
        //  http.addFilterBefore(new CaptchaValidationFilter(redisTemplate, codeGenerator), UsernamePasswordAuthenticationFilter.class);
        // JWT 校验过滤器
        http.addFilterBefore(new JwtValidationFilter(redisTemplate,securityProperties.getJwt().getKey()), UsernamePasswordAuthenticationFilter.class);

        return http.build();
    }

    /**
     * 不走过滤器链的放行配置
     */
    @Bean
    public WebSecurityCustomizer webSecurityCustomizer() {
        return (web) -> {
            if (CollectionUtil.isNotEmpty(securityProperties.getIgnoreUrls())) {
                web.ignoring().requestMatchers(securityProperties.getIgnoreUrls().toArray(new String[0]));
            }
        };
    }

    /**
     * 密码编码器
     */

    @Bean
    public PasswordEncoder passwordEncoder() {
        // Configure BCryptPasswordEncoder with strength (default 10) and salt
        return new BCryptPasswordEncoder(10, new SecureRandom());
    }
    /**
     * AuthenticationManager 手动注入
     *
     * @param authenticationConfiguration 认证配置
     */
    @Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration authenticationConfiguration) throws Exception {
        return authenticationConfiguration.getAuthenticationManager();
    }

}
