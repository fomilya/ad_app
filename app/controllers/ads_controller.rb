class AdsController < ApplicationController
	def index

	end

	def new
		
	end

	def show
		@ad = Ad.find(params[:id])
	end

	def create

		@ad = Ad.new(ad_params)
		@ad.save
		redirect_to @ad
	end

	private def ad_params
		params.require(:ad).permit(:title, :description, :phote, :adress, :tegs, :status)
	end
end
