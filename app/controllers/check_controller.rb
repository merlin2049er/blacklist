class CheckController < ApplicationController

  def index
  end

  def search


    respond_to do |format|
      format.html do
        if Banned.find_by_email( params[:q])


          @result = Banned.msg


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
