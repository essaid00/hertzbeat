package org.apache.hertzbeat.manager.security.service.impl;

import cn.hutool.core.collection.CollectionUtil;
import lombok.RequiredArgsConstructor;
import org.apache.hertzbeat.manager.dao.TagDao;
import org.apache.hertzbeat.manager.security.dao.UserDao;
import org.apache.hertzbeat.manager.security.dto.UserAuthInfo;
import org.apache.hertzbeat.manager.security.model.SysUser;
import org.apache.hertzbeat.manager.security.service.SysUserService;
import org.bouncycastle.util.Arrays;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * 用户业务实现类
 *
 * @author haoxr
 * @since 2022/1/14
 */
@Service
@RequiredArgsConstructor
public class SysUserServiceImpl  implements SysUserService {
    @Autowired
    private UserDao userDao;
    @Override
    public SysUser getUserAuthInfo(String username) {
        SysUser userAuthInfo = this.userDao.getUserByUsername(username);
        if (userAuthInfo != null) {
            Set<String> roles = new HashSet<>();
            if (CollectionUtil.isNotEmpty(roles)) {
                Set<String> perms =  new HashSet<>();
                perms.add("Admin");
                userAuthInfo.setPerms(perms);
            }

            // 获取最大范围的数据权限
            Integer dataScope =2;

        }
        return userAuthInfo;
    }
}
