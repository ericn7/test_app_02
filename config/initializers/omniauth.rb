#Rails.application.config.middleware.use OmniAuth::Builder do  
#  provider :twitter, 'AJ7xYWxisrwQwB8eU1dYFA', 'hcDpmgmR26PkHwTr5A9x0frqXzAsV2NszEhIRZNEMSw'  
#end  



require 'forcedotcom'



# Set the default hostname for omniauth to send callbacks to.
# seems to be a bug in omniauth that it drops the httpS
# this still exists in 0.2.0
OmniAuth.config.full_host = 'https://localhost:3000'

module OmniAuth
  module Strategies
	#tell omniauth to load our strategy
	autoload :Forcedotcom, 'lib/forcedotcom'
  end
end


Rails.application.config.middleware.use OmniAuth::Builder do
  provider :forcedotcom, '3MVG9y6x0357HledDQm9ssiFmUV9z6olnMz5i7TrEJlERxwUDVL9tro0H4eGxMfPzMa6t9vXJxUs.SMoNk0XK', '3217944087800595030', {:client_options => {:ssl => {:ca_path => "C:\cygwin\etc\ssl\certs"}}}
  provider :twitter, 'AJ7xYWxisrwQwB8eU1dYFA', 'hcDpmgmR26PkHwTr5A9x0frqXzAsV2NszEhIRZNEMSw'
end

