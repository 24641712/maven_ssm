package cn.lnu.service;

import javax.annotation.Resource;
import cn.lnu.entity.User;

/**
 * @author ChengChuangLiang
 * @date 2018/7/21
 */
@Resource
public interface UserService {
    public User login(User user);



}
