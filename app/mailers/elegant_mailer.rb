class ElegantMailer < ActionMailer::Base
  default :from => "website@elegantlivinghomes.com.au"

  def inquiry_email(user)
    @user = user
    mail(:to => "fbvilela@gmail.com", :subject => "Incoming inquiry from your website: #{@user.subject}", :from => user.email)
  end
end
