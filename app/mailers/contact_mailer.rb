class ContactMailer < ActionMailer::Base

  default :from => "meekbarbrian@gmail.com"
  default :to => "the.bradley.staples@gmail.com"

  def form_mail(message)
    @message = message
    mail(
        :subject => "[bradleystapl.es contact form] #{message.subject}",
        :from => "\"#{message.name}\" <#{message.email}>"
    )
  end

end
