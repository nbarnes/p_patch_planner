class UsersController < ApplicationController


  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
    @user = current_user
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'News post was successfully updated.'
    else
      render action: 'edit'
    end
  end

end
