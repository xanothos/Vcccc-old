class LoginController < ApplicationController
  def create
    # create a new account based on the information provided in the form
    @contact = Contact.new
    @address = Address.new

    respond_to do |format|
      format.html
    end
  end

  def save
    @address = params[:address]
    @contact = params[:contact]

    @contact.addresses << @address
    @contact.save

    flash[:notice] = "The contact record was saved."

    respond_to do |format|
      format.html
    end
  end

  def show
    if (session[:id].to_s != params[:id])
      flash[:notice] = "You don't have access to that account"
      redirect_to :controller=>:home, :action => :index
    end
    @contact = Contact.find(params[:id])
    @workorders = @contact.workorders.all

    rescue ActiveRecord::RecordNotFound
      logger.debug 'Matching record not found!'
      redirect_to :controller=>:home, :action=>:index
  end

end
