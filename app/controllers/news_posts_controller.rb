class NewsPostsController < ApplicationController
  before_action :set_news_post, only: [:show, :edit, :update, :destroy]

  # GET /news_posts
  def index
    @news_posts = NewsPost.all
  end

  # GET /news_posts/1
  def show
  end

  # GET /news_posts/new
  def new
    @news_post = NewsPost.new
  end

  # GET /news_posts/1/edit
  def edit
  end

  # POST /news_posts
  def create
    @news_post = NewsPost.new(news_post_params)
    if @news_post.save
      redirect_to @news_post, notice: 'News post was successfully created.'
      send_notifications_of_new_post(@news_post)
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /news_posts/1
  def update
    if @news_post.update(news_post_params)
      redirect_to @news_post, notice: 'News post was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /news_posts/1
  def destroy
    @news_post.destroy
    redirect_to news_posts_url, notice: 'News post was successfully destroyed.'
  end

  def send_notifications_of_new_post(news_post)
    Rails.logger.debug('BOB KEEPS IT COOL')

    users = User.where("email IS NOT NULL")
    users.each do |user|
      NewsPostMailer.new_news_post_email(user).deliver
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_post
      @news_post = NewsPost.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def news_post_params
      params.require(:news_post).permit(:title, :body)
    end

end
