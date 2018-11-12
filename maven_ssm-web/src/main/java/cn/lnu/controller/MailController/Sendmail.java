package cn.lnu.controller.MailController;

/**
 * Created by CCL on 2018/10/31 0031 下午 9:24
 *
 * @description:
 */

import cn.lnu.entity.data.Email_Authenticator;

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

    public static void main(String[] args) {
        try {
            String toEmail;   //接受者邮箱地址
            String subjects;  //标题
            String contents;  //内容

            toEmail = "2464171268@qq.com";
            subjects = "注册邮件";
            contents = "<a href='#'>激活</a>";

            send_email(toEmail,subjects,contents);
        } catch (AddressException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (MessagingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public static void send_email(String toEmail,String subjects,String contents) throws IOException, AddressException, MessagingException{

        String to = toEmail;
        String subject = subjects;
        String content = contents;

        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp.qq.com");
        properties.put("mail.smtp.port", "25");
        properties.put("mail.smtp.auth", "true");

        Authenticator authenticator = new Email_Authenticator("2464171268@qq.com", "tujcznajeagteabi");
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
    }
}
