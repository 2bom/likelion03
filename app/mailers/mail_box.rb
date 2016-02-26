class MailBox < ApplicationMailer
    def mail_send add_1_deliver_useraddress, add_2_titile, add_3_content
        mail from: add_1_deliver_useraddress, 
        to: 'ilria2@naver.com', 
        subject: add_2_titile,
        body: add_2_titile
    end
end
