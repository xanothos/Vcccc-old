class HomeController < ApplicationController
  def index
    @contact = Contact.new

    respond_to do |format|
      format.html
    end
  end

  def login
    loginid = params[:home]
    c = Contact.find_by_strFirstname_and_strLastname(loginid[:strFirstname], loginid[:strLastname])

    if (c == nil)
      flash[:notice] = "The user cannot be found."
    else
      flash[:notice] = "Found our guy!"
    end

    redirect_to :action=>'index'

  end
end
