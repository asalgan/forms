class WelcomeMailer < ActionMailer::Base
  default from: "johngmeyers@gmail.com"

  def welcome_email(user, email)
    @user = user
    @email = email
    @url = "localhost:3000/ "

    mail(:to => @email,
         :subject => "Welcome to Snake!",
         :date => Time.now
         )
  end
end
