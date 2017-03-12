package tw.fun1314.app.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;

@Configuration
public class MailConfig {

//	@Bean
//	public MailSender mailSender() {
//		return new org.springframework.mail.javamail.JavaMailSenderImpl();
//	}
//	
//	@Bean
//	public SimpleMailMessage templateMessage() {
//		SimpleMailMessage templateMessage = new org.springframework.mail.SimpleMailMessage();
//		
//		templateMessage.setFrom("student@emba.ntu.edu.tw");
//		templateMessage.setSubject("台大EMBA學生會 1314Fun開跑 - 2017 台大 EMBA 校園馬拉松活動小組");
//		
//		
//		return templateMessage;
//	}
}
