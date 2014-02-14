class NewsPostsController < ApplicationController
  before_action :set_news_post, only: [:show, :edit, :update, :destroy]

  # GET /news_posts
  def index
    @news_posts = NewsPost.all
  end

  # GET /news_posts/1
  def show
    @news_posts = NewsPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @news_posts }
    end
  end

  # GET /news_posts/new
  def new
    @news_post = NewsPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @news_posts }
    end
  end

  # GET /news_posts/1/edit
  def edit
    @news_posts = NewsPost.find(params[:id])
  end

  # POST /news_posts
  def create
    @news_post = NewsPost.new(news_post_params)
    authorize @news_post

    respond_to do |format|
      if @news_post.save
        send_notifications_of_new_post(@news_post)
        format.html { redirect_to @news_post, notice: 'News post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @news_post }
      else
        format.html { render action: 'new' }
        format.json { render json: @news_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news_posts/1
  def update
    respond_to do |format|
      if @news_post.update(news_post_params)
        format.html { redirect_to @news_post, notice: 'News post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @news_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_posts/1
  def destroy
    authorize @news_post
    @news_post.destroy

    respond_to do |format|
      format.html { redirect_to news_posts_url, notice: 'News post was successfully destroyed.' }
      format.json { head :no_content }
    end
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
