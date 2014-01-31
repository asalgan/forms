class WelcomeMailer < ActionMailer::Base
  default from: "johngmeyers@gmail.com"

  def welcome_email(user)
    @user = user
    @url = "localhost:3000/ "

    mail(:to => @user.email,
         :subject => "Welcome to Snake!",
         :date => Time.now
         )
  end
end
