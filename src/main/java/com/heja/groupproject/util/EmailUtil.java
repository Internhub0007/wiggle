package com.heja.groupproject.util;

import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;

public class EmailUtil {

	public static void sendPassword(MailSender mailSender ,String toEmail, String subject, String msg) {
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		mailMessage.setFrom("groupg999@gmail.com");
		mailMessage.setTo(toEmail);
		mailMessage.setSubject(subject);
		mailMessage.setText(msg);
		mailSender.send(mailMessage);
	}
}
