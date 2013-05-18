class HomeController < ApplicationController
  def index
  end

  def projects
    @projects = Project.all
  end

  def portfolio
    @sites = Portfolio.all
  end


  def contact
      @message = Message.new
  end


  def contacted
    @message = Message.new(params[:message])

    if @message.valid?
      ContactMailer.form_mail(@message).deliver
      flash[:alert] = "Message was successfully sent."
      redirect_to(contact_path)
    else
      flash[:notice] = "Please fix the errors and resubmit."
      render :contact
    end
  end

end
