class LoginController < ApplicationController
  def create
    # create a new account based on the information provided in the form
    @contact = Contact.new
    @address = Address.new

    respond_to do |format|
      format.html
    end
  end

  def index
    # redirect to the general index page
    @contact = Contact.new

    respond_to do |format|
      format.html
    end
  end

  def save
    address = params[:address]
    contact = params[:contact]
    logger.debug 'got here!'
    logger.debug contact[:strFirstname]
    logger.debug address[:address1]

    redirect_to :action=>:show, :id=>1
  end

  def show

  end

end
