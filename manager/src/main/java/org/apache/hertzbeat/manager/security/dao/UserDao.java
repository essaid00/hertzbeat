package org.apache.hertzbeat.manager.security.dao;

import org.apache.hertzbeat.manager.security.dto.UserAuthInfo;
import org.apache.hertzbeat.manager.security.model.SysUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface UserDao extends JpaRepository<SysUser, Long>, JpaSpecificationExecutor<SysUser> {

    SysUser getUserByUsername(String username);
}
