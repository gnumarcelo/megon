class SiteMailer < ActionMailer::Base
  default :from => "gnumarcelo@gmail.com"

  def contact(params)
    mail(:from => params[:email], :to => "gnumarcelo@gmail.com", :subject => "Contato pelo site", :body => params[:message])
  end
end

