class LoginController < ApplicationController
  def create
    # create a new account based on the information provided in the form


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

end
