package tw.fun1314.app.service;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

@Service
public class MailService {
	
	@Autowired
	private JavaMailSender mailSender;


	public void sendMail(String htmlContent, String toMailAddr) {
		
		MimeMessagePreparator preparator = new MimeMessagePreparator() {

            public void prepare(MimeMessage mimeMessage) throws Exception {
            	mimeMessage.setContent(htmlContent, "text/html; charset=utf-8");
            	mimeMessage.setFrom(new InternetAddress("student@emba.ntu.edu.tw"));
                mimeMessage.setSubject(MimeUtility.encodeText("台大EMBA學生會 1314Fun開跑 - 2017 台大 EMBA 校園馬拉松活動小組", "utf-8", "B"));
                
                mimeMessage.addRecipient(Message.RecipientType.BCC, new InternetAddress("jakarta99@gmail.com"));
                //mimeMessage.addRecipient(Message.RecipientType.BCC, new InternetAddress("jasmine.yu@tw.pwc.com"));
                mimeMessage.addRecipient(Message.RecipientType.BCC, new InternetAddress("jasminefrank2002@gmail.com"));
                mimeMessage.addRecipient(Message.RecipientType.BCC, new InternetAddress("yyhbl86@gmail.com"));
                mimeMessage.addRecipient(Message.RecipientType.BCC, new InternetAddress("setember2@icloud.com"));
                
                mimeMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(toMailAddr));
            }
        };

		
		try{
			mailSender.send(preparator);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
