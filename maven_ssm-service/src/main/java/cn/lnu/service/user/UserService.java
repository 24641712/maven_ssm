package cn.lnu.service.user;

import javax.annotation.Resource;
import cn.lnu.entity.user.User;

import java.util.List;

/**
 * @author ChengChuangLiang
 * @date 2018/7/21
 */
@Resource
public interface UserService {
    public User login(User user);

    public List<User> find();

    public int register(User user);

    public void sendEmail();

    public User selectByPrimaryKey(Integer id);


}
