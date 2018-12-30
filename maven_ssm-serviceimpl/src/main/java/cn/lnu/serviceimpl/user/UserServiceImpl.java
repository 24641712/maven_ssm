package cn.lnu.serviceimpl.user;

import cn.lnu.entity.data.Sendmail;
import cn.lnu.entity.user.User;
import cn.lnu.dao.user.UserDao;
import cn.lnu.service.user.UserService;
import cn.lnu.utils.CodeUtil;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import javax.mail.MessagingException;
import java.io.IOException;
import java.util.List;

/**
 * @author ChengChuangLiang
 * @date 2018/7/21
 */
@Service("userService")
public class UserServiceImpl implements UserService{
    @Resource
    private UserDao userDao;

    @Resource
    private Sendmail sendmail;

    @Override
    public User login(User user) {
        return userDao.login(user);
    }

    @Override
    public List<User> find() {
        List<User> list = null;
        try {
             list = userDao.find(); //执行异常打印异常信息
        }catch (Exception e){
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public int register(User user) {
        System.out.println("register:"+user.toString());
        return userDao.register(user);
    }

    @Override
    public void sendEmail() {
        String toEmail = "chengchuangliang@163.com";
        String code = null;
        CodeUtil codeUtil = new CodeUtil();
        code = codeUtil.generateUniqueCode();
        try {
            sendmail.send_email(toEmail,code);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (MessagingException e) {
            e.printStackTrace();
        }

    }

    @Override
    public User selectByPrimaryKey(Integer id) {
        return userDao.selectByPrimaryKey(id);
    }


}
