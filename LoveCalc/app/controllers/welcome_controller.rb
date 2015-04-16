class WelcomeController < ApplicationController

	def index
		
	end

	def create
		@response = HTTParty.get("https://love-calculator.p.mashape.com/getPercentage?fname=#{params[:fname]}&sname=#{params[:sname]}",
  			headers:{
    		"X-Mashape-Key" => "pYpIkmLxoLmsh4dox9t3GT1eTzpop16jErajsndr3yJ0weZQFa",
    		"Accept" => "application/json"
		    	}
		    )
		# binding.pry
		render "result"
	end


end