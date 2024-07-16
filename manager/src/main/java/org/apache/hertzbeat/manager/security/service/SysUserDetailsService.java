package org.apache.hertzbeat.manager.security.service;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.hertzbeat.manager.security.dto.UserAuthInfo;
import org.apache.hertzbeat.manager.security.model.SysUser;
import org.apache.hertzbeat.manager.security.model.SysUserDetails;
import org.apache.hertzbeat.manager.security.service.SysUserService;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 * 系统用户认证 DetailsService
 *
 * @author Ray
 * @since 2021/10/19
 */
@Service
@RequiredArgsConstructor
@Slf4j
public class SysUserDetailsService implements UserDetailsService {

    private final SysUserService sysUserService;

    /**
     * 根据用户名获取用户信息
     *
     * @param username 用户名
     * @return 用户信息
     * @throws UsernameNotFoundException 用户名未找到异常
     */
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        try {
            SysUser userAuthInfo = sysUserService.getUserAuthInfo(username);
            if (userAuthInfo == null) {
                throw new UsernameNotFoundException(username);
            }
            return new SysUserDetails(userAuthInfo);
        } catch (Exception e) {
            e.printStackTrace();
            // 记录异常日志
            log.error("认证异常:{}", e.getMessage());
            // 抛出异常
            throw e;
        }
    }
}
