class SessionsController < ApplicationController
  def new
    render :login
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name
  end

  def index
    @username = session[:name]
  end
end
