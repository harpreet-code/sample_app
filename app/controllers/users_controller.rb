class UsersController < ApplicationController
  before_filter :authenticate,  :only => [:index, :edit, :update, :destroy]
  before_filter :correct_user,  :only => [:edit, :update]
  before_filter :admin_user,    :only => :destroy
  before_filter :not_signed_in, :only => [:create, :new]

  def new
    @user = User.new
    @title = "Sign up"
  end

  def show
    @user = User.find(params[:id])
    @title = @user.name
    @microposts = @user.microposts.paginate(:page => params[:page])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      @title = "Sign up"
      @user.password = nil
      @user.password_confirmation = nil
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
    @title = "Edit user"    
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated."
      redirect_to @user
    else
      @title = "Edit user"
      render 'edit'
    end
  end
  
  def index
    @users = User.paginate(:page => params[:page])
    @title = "All users"
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:sucess] = "User destroyed."
    redirect_to users_path
  end
  
  private
  
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
    
    def admin_user
      @user = User.find(params[:id])
      logger.debug "Current user admin?: #{current_user.admin?}"
      redirect_to(root_path) if !current_user.admin? || current_user?(@user)
    end
    
    def not_signed_in
      redirect_to(root_path) unless !signed_in?
    end
end
