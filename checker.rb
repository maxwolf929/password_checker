=begin
<Password Strenght Checker>
    Copyright (C) <2014>  <maxwolf929>
	for contact: maxwolf929@gmail.com

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
	
	You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
=end
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