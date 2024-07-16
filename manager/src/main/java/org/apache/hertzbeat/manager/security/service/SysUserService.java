package org.apache.hertzbeat.manager.security.service;



import org.apache.hertzbeat.manager.security.dto.UserAuthInfo;
import org.apache.hertzbeat.manager.security.model.SysUser;

import java.util.List;

/**
 * 用户业务接口
 *
 * @author haoxr
 * @since 2022/1/14
 */
public interface SysUserService {


    SysUser getUserAuthInfo(String username);



}
