
class NewsPostMailer < ActionMailer::Base

  default from: 'updates@p-patch.com'

  def new_news_post_email(user)
    @user = user
    # @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'New News at P-Patch.com!')
  end

end
