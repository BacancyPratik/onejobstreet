class UserExpsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def index
      @user_exps=UserExp.all
    end
    def new
      @user_exp=UserExp.new
    end
    def create
      @user_exp=current_user.user_exps.new(users_param)
      if @user_exp.save
        redirect_to users_url
      else
        render "index"
      end
    end

    def edit
       @user_exp=UserExp.find_by(user_id: params[:id])
    end

    def update
      @user_exp = UserExp.find_by(id: params[:id])

      if @user_exp.update(users_param)
        redirect_to users_path
      else
        render "edit"
      end
    end
    def destroy
      @user_exp=UserExp.find_by(id: params[:id])
      if @user_exp.destroy
        redirect_to users_url
      end
    end
    private
    def users_param
      params.require(:user_exp).permit(:designation,:company,:working_since,:location,:notice,:months,:skills)
    end

end
