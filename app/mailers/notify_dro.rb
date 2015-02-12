class NotifyDro < ActionMailer::Base
  default from: "coppis.co@gmail.com"

  def notify
    mail(to: "emurillo510@gmail.com", cc: "mmadlansacay7@yahoo.com" , subject: "Welcome to My Awesome Site")
  end

end
