class ContactMailer < ActionMailer::Base

  # make sure /config/initializers/setup_mail.rb with:
  #
  # ActionMailer::Base.smtp_settings = {
  #    :address              => "smtp.gmail.com",
  #    :port                 => 587,
  #    :domain               => "gmail.com",
  #    :user_name            => "username@gmail.com",
  #    :password             => "top-secret-password",
  #    :authentication       => :plain,
  #    :enable_starttls_auto => true
  # }
  #
  # ActionMailer::Base.default_url_options = {
  #    :host => "domain.com"
  # }
  #

  default :from => "meekbarbarian@gmail.com"
  default :to => "meekbarbarian@gmail.com"

  def form_mail(message)
    @message = message
    mail(
        :subject => "[bradleystapl.es contact form] #{message.subject}",
        :from => '',
    )

  end

end
