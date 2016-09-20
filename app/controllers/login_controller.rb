class LoginController < ApplicationController
  skip_before_action :check_logined

  layout false

  def index

   session[:usr] = nil
   session[:usn] = nil
   #reset_session
   #redirect_to books_url
  end
   
  def auth
  usr = User.authenticate(params[:userid],params[:password])
  if usr then
     reset_session
     session[:usr] = usr.id
     session[:usn] = usr.username
     redirect_to books_url
  else
   flash.now[:referer] = params[:referer]
   @error = 'ユーザーID/パスワードが間違っています。'
   render 'index'
  end
 end

 def delete
 end
end
