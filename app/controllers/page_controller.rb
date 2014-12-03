class PageController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @contact_page = ContactPage.new
  end

  def info
  end

  def event
  end

  def thanks
    # @contact_page = ContactPage.find(params[:id])
  end

  def work_samples
    
  end
end
 

