class PwdConMailer < ActionMailer::Base
  default from: "johngmeyers@gmail.com"

  def welcome_email(user, email)
  @user = user
  @email = email
  @url = "localhost:3000/ "

  mail(:to => @email,
       :subject => "Reset Your Password!",
       :date => Time.now
       )
  end
end
