class HomeController < ApplicationController


  def index
  end

  def projects
    @projects = Project.all(:order => :display_order)
  end

  def portfolio
    @portfolios = Portfolio.all(:order => :display_order)
  end


  def contact
      @message = Message.new
  end


  def contacted
    @message = Message.new(params[:message])
    if @message.valid?
      ContactMailer.contact_email(@message).deliver
      flash[:alert] = "Message was successfully sent."
      redirect_to(contact_path)
    else
      # re-render contact form. errors in @message are detected there
      render :contact
    end
  end

end
