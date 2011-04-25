require 'sinatra'

class HomeApp < Sinatra::Base  
  get "*" do  
	"Hello from the rack"  
  end  
end  