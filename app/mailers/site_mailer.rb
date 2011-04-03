class SiteMailer < ActionMailer::Base
  default :from => "contato@megon.com.br"

  def contact(params)
    mail(:from => params[:email], :to => "contato@megon.com.br", :subject => "Contato pelo site", :body => params[:message])
  end
end

