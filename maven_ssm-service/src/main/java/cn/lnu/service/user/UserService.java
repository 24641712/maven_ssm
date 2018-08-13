package cn.lnu.service.user;

import javax.annotation.Resource;
import cn.lnu.entity.user.User;

/**
 * @author ChengChuangLiang
 * @date 2018/7/21
 */
@Resource
public interface UserService {
    public User login(User user);



}
