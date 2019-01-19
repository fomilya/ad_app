class AdsController < ApplicationController
	def index
		@ad = Ad.all
	end

	def new
		@ad = Ad.new
	end

	def show
		@ad = Ad.find(params[:id])
		@user = User.find(@ad.user_id)
	end

	def edit
		@ad = Ad.find(params[:id])
	end

	def update
		@ad = Ad.find(params[:id])
		if @ad.photo.attached?
				@ad.photo.purge
				@ad.photo.attach(params[:photo])
		end

		if(@ad.update(ad_params))
			redirect_to @ad
		else
			render "edit"
		end
	end

	def destroy
		@ad = Ad.find(params[:id])
		if @ad.photo.attached?
				@ad.photo.purge
		end
		@ad.destroy

		redirect_to ads_path
	end

	def create
		@ad = Ad.new(ad_params)
		@ad.user_id = current_user.id
		if(@ad.save)
			redirect_to @ad
		else
			render "new"
		end
	end

	private def ad_params
		params.require(:ad).permit(:title, :description, :photo, :adress, :tegs, :status, :tag_names)
	end
end
