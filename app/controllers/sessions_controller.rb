class SessionsController < ApplicationController

  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to new_session_path and return
    else
      session[:name] = params[:name]
      redirect_to hello_path
    end
  end

  def destroy
    session.delete(:name)
    redirect_to hello_path
  end

end
