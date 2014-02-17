
class NewsPostMailer < ActionMailer::Base

  default from: 'p.patch.no.reply@gmail.com'

  def new_news_post_email(user)
    @user = user
    # @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'New News at P-Patch.com!')
  end

end
