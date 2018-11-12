package cn.lnu.entity.data;

/**
 * Created by CCL on 2018/10/31 0031 下午 5:28
 *
 * @description:
 */

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
public class Email_Authenticator extends Authenticator {
    String userName = null;
    String password = null;
    public Email_Authenticator() {
    }
    public Email_Authenticator(String username, String password) {
        this.userName = username;
        this.password = password;
    }
    protected PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(userName, password);
    }
}