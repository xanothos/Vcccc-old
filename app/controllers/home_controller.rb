class HomeController < ApplicationController
  def index
    @contact = Contact.new

    respond_to do |format|
      format.html
    end
  end

  def login
    @count = 0 if @count == nil
    logger.debug @count.to_s
    loginid = params[:home]
    c = Contact.find_by_strFirstname_and_strLastname(loginid[:strFirstname], loginid[:strLastname])

    if (c == nil)
      flash[:notice] = "The user cannot be found."
      @count += 1
      if @count > 3
        redirect_to :controller=>:login, :action=>:create
      else
        redirect_to :action=>:index
      end
      return
    else
      flash[:notice] = "Found our guy!"
    end

    logger.debug 'should redirect'
    redirect_to :action=>:index
  end
end
