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
    @address = params[:address]
    @contact = params[:contact]
    logger.debug 'got here!'
    @contact.addresses << @address
    @contact.save
    logger.debug 'after save'

    flash[:notice] = "The contact record was saved."
  end

  def show
    @contact = Contact.find(params[:id])
    @workorders = @contact.workorders.all

    rescue ActiveRecord::RecordNotFound
      logger.debug 'Matching record not found!'
      redirect_to :controller=>:home, :action=>:index
  end

end
