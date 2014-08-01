class FavoursController < ApplicationController
	before_action :authenticate_user!

	def index
		@favours = Favour.all
	end	

	def new
		@favour = Favour.new
	end

	def create
		@favour = Favour.new(favour_attributes)

		if @favour.save 
			redirect_to favours_path
		else
			render :new
		end
	end

	def show
		@favour = Favour.find(params[:id])
	end

	private

	def favour_attributes
		params.require(:favour).permit(:title, :description, :location)
	end
end

