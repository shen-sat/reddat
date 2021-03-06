class LinksController < ApplicationController
	def index
		@links = Link.all
	end

	def new
		@link = Link.new
	end

	def create
		@link = Link.new(link_params)
		if @link.save
			redirect_to root_path
		else
			render :new
		end
	end

	private

	def link_params
		params.require(:link).permit(:title, :url)
	end
end