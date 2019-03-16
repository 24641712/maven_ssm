package cn.lnu.dao.user;

import cn.lnu.entity.user.User;
import java.util.List;

/**
 * @author CCL
 * @date 2018/7/21
 */
public interface UserDao {

    public User login(User user);

    public List<User> findAllUsers();

    public int registerUser(User user);

    public User selectByPrimaryKey(Integer id);

}
