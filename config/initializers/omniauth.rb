#Rails.application.config.middleware.use OmniAuth::Builder do  
#  provider :twitter, 'AJ7xYWxisrwQwB8eU1dYFA', 'hcDpmgmR26PkHwTr5A9x0frqXzAsV2NszEhIRZNEMSw'  
#end  



require 'forcedotcom'



# Set the default hostname for omniauth to send callbacks to.
# seems to be a bug in omniauth that it drops the httpS
# this still exists in 0.2.0
if Rails.env.development?
	OmniAuth.config.full_host = 'https://localhost:3000'
else
	OmniAuth.config.full_host = 'https://cold-summer-842.heroku.com'
end



module OmniAuth
  module Strategies
	#tell omniauth to load our strategy
	autoload :Forcedotcom, 'lib/forcedotcom'
  end
end


Rails.application.config.middleware.use OmniAuth::Builder do

	if Rails.env.development?
		provider :forcedotcom, '3MVG9y6x0357HledDQm9ssiFmUV9z6olnMz5i7TrEJlERxwUDVL9tro0H4eGxMfPzMa6t9vXJxUs.SMoNk0XK', '3217944087800595030'
	else
		provider :forcedotcom, '3MVG9y6x0357HledDQm9ssiFmUWm0heb.41XHDrNdruftmCOR7PpjVkEaZk9nt7jy.v07xDfHNtg776YA8ZEy', '2843283934376046892'
	end

  provider :twitter, 'AJ7xYWxisrwQwB8eU1dYFA', 'hcDpmgmR26PkHwTr5A9x0frqXzAsV2NszEhIRZNEMSw'
end

