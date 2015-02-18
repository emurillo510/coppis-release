class NotifyDro < ActionMailer::Base
  default from: "coppis.co@gmail.com"

  def notify_comment_creation(user,post)
  	@user = user
  	@post = post
    mail(to: "emurillo510@gmail.com", cc: "mmadlansacay7@yahoo.com" , subject: "Coppis: New Comment Created")
  end

  def notify_user_creation(user)
  	@user = user
    mail(to: "emurillo510@gmail.com", cc: "mmadlansacay7@yahoo.com" , subject: "Coppis: New User Created")
  end

  def notify_post_creation(user,post)
  	@user = user
  	@post = post
    mail(to: "emurillo510@gmail.com", cc: "mmadlansacay7@yahoo.com" , subject: "Coppis: Post Created")
  end
end
