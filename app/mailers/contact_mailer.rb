class ContactMailer < ActionMailer::Base

  # make sure ActionMailer::Base.smtp_settings are set
  # in config/initializers/setup_mail.rb like so:
  #
  #ActionMailer::Base.smtp_settings = {
  #    :address              => "smtp.gmail.com",
  #    :port                 => 587,
  #    :domain               => "gmail.com",
  #    :user_name            => "email_address@gmail.com",
  #    :password             => "SuperSneakyPassword",
  #    :authentication       => :plain,
  #    :enable_starttls_auto => true
  #}


  default :from =>  "meekbarbarian@gmail.com"
  default :to =>    "the.bradley.staples@gmail.com"

  def form_mail(message)
    @message = message
    mail(
        :subject => "[bradleystapl.es contact form] #{message.subject}",
        :from => "\"#{message.name}\" <#{message.email}>"
    )
  end

end
