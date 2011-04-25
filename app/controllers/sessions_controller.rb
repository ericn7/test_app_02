require 'Accounts'

class SessionsController < ApplicationController  
#  def create  
#		auth = request.env["omniauth.auth"]  
#		user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)  
#		session[:user_id] = user.id  
#		redirect_to root_url, :notice => "Signed in!"  
#  end 

#	def create
#		ENV['sfdc_token'] = request.env['omniauth.auth']['credentials']['token']
#		ENV['sfdc_instance_url'] = request.env['omniauth.auth']['instance_url']
#		render :text => request.env['omniauth.auth'].inspect
#	end 

	def create
		ENV['sfdc_token'] = request.env['omniauth.auth']['credentials']['token']
		ENV['sfdc_instance_url'] = request.env['omniauth.auth']['instance_url']
		render :text => request.env['omniauth.auth'].inspect
		#render :text => Accounts.get_first_hundred.inspect
	end
  
	def destroy  
	  session[:user_id] = nil  
	  redirect_to root_url, :notice => "Signed out!"  
	end  
end  