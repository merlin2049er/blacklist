class CheckController < ApplicationController

  def index
  end

  def search


    respond_to do |format|
      format.html do
        if  @user = Banned.find_by_email( params[:q])
          @result = @user.msg
        else
          @result = "Not banned."
      end
      end
      end

  end

  private


  def banned_user
    params.require(:email)
  end

end
