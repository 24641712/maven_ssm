package cn.lnu.entity.data;

/**
 * Created by CCL on 2018/10/31 0031 下午 5:26
 *
 * @description:
 */

import java.io.IOException;
import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class Sendmail {

    public int send_email(String toEmail,String code) throws IOException, AddressException, MessagingException{

        String to = toEmail;
        String subject = "邮箱验证";
        String content = "<html><head></head><body><h1>这是一封激活邮件,激活请点击以下链接</h1><h3><a href='http://localhost:8080/RegisterDemo/ActiveServlet?code="
                + code + "'>http://localhost:8080/RegisterDemo/ActiveServlet?code=" + code
                + "</href></h3></body></html>";

        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp.qq.com");
        properties.put("mail.smtp.port", "25");
        properties.put("mail.smtp.auth", "true");

        Authenticator authenticator = new Email_Authenticator("2464171268@qq.com", "pchfwcnialuudjab");
        javax.mail.Session sendMailSession = javax.mail.Session.getDefaultInstance(properties, authenticator);
        MimeMessage mailMessage = new MimeMessage(sendMailSession);
        mailMessage.setFrom(new InternetAddress("2464171268@qq.com"));

        // Message.RecipientType.TO属性表示接收者的类型为TO
        mailMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
        mailMessage.setSubject(subject, "UTF-8");
        mailMessage.setSentDate(new Date());

        // MiniMultipart类是一个容器类，包含MimeBodyPart类型的对象
        Multipart mainPart = new MimeMultipart();

        // 创建一个包含HTML内容的MimeBodyPart
        BodyPart html = new MimeBodyPart();
        html.setContent(content.trim(), "text/html; charset=utf-8");
        mainPart.addBodyPart(html);
        mailMessage.setContent(mainPart);
        Transport.send(mailMessage);
        return 1;
    }

//    public static void main(String[] args) {
//        String toEmail = "chengchuangliang@163.com";
//        String subjects = "邮箱验证";
//        String contents = "邮箱验证";
//        try {
//            send_email(toEmail,"123456");
//        } catch (IOException e) {
//            e.printStackTrace();
//        } catch (MessagingException e) {
//            e.printStackTrace();
//        }
//
//
//    }




}
