class ContactMailer < ActionMailer::Base

  default :from => "me@bradleystapl.es"
  default :to => "me@bradleystapl.es"

  def form_mail(message)
    @message = message
    mail(
        :subject => "[bradleystapl.es contact form] #{message.subject}",
        :from => "\"#{message.name}\" <#{message.email}>"
    )
  end

end
