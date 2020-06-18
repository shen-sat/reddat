class LinksController < ApplicationController
	def index
		@links = Link.all
	end

	def new
		@link = Link.new
	end

	def create
		puts params[:link]
		link = Link.new(link_params)
		redirect_to root_path if link.save
	end

	private

	def link_params
		params.require(:link).permit(:title, :url)
	end
end