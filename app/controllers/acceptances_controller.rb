class AcceptancesController < ApplicationController

	def create
		# favour_id
		@acceptance = Acceptance.new(user_id: current_user.id, favour_id: params[:favour_id])

		if @acceptance.save 
			redirect_to users_path, notice: "Favour accepted! Don't let them down."
		else
			render :new
		end
	end

	def new
	end

	def show

	@favour.accepted

	end
end