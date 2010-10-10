class HomeController < ApplicationController
  def index
    @contact = Contact.new

    respond_to do |format|
      format.html
    end
  end

  def login
    session[:count] = 0 if session[:count].nil?

    loginid = params[:home]
    c = Contact.find_by_strFirstname_and_strLastname(loginid[:strFirstname], loginid[:strLastname])

    if (c == nil)
      flash[:notice] = "The user cannot be found."
      if (session[:count] >= 2)
        session[:count] = nil
        redirect_to :controller=>:login, :action=>:create
        return
      else
        session[:count] += 1
      end
    else
      session[:id] = c.id
      redirect_to :controller=>:login, :action=>:show, :id=>c.id
      return
    end

    redirect_to :action=>'index'

  end
end
