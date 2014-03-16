require 'sinatra'

get "/" do
	erb :index
end

post "/show_result" do
	@p = /[\@\#\_\-]/.match(params[:your_password])
	
	@result = if @p
		"Strong Password!"
	else	
		"Weak Password!"
	end

	erb :show_result
end

#erb :show_result, :locals => {:s => params[:s]}
#erb :show_result, :locals => {:w => params[:w]}