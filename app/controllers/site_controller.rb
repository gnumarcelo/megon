class SiteController < ApplicationController
  
  def index
    I18n.locale = params[:lang]
  end

  def contact
    SiteMailer.contact(params).deliver
    redirect_to :action => 'index'
  end
  
  def set_default_locale
    redirect_to '/pt'
  end

end
