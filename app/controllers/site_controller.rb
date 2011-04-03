class SiteController < ApplicationController
  
  def index
    I18n.locale = params[:lang]
  end

  def contact
    SiteMailer.contact(params).deliver
  end

end
