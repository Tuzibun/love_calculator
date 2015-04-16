class WelcomeController < ApplicationController

	def index
		
	end

	def create
		@response = HTTParty.get("https://love-calculator.p.mashape.com/getPercentage?fname=(params[:fname])&sname=(params[:sname])",
  			headers:{
    		"X-Mashape-Key" => "KmN2pzz6TWmsh9iYsK35ROv4YQYop1ncRSjjsnGznOJe1ABEG0",
    		"Accept" => "application/json"
		    	}
		    )
		render "result"
	end




end