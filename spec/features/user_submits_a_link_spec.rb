require 'rails_helper'

RSpec.feature 'user submits a link' do
	scenario 'they see submitted link on homepage' do
		link_title = 'The Example website'
		link_url = 'http://www.example.com/'

		visit root_path
		click_on 'Submit a new link'
		fill_in 'link_title', with: link_title
		fill_in 'link_url', with: link_url
		click_on 'Submit!'

		expect(page).to have_link link_title, href: link_url
	end

	context 'user submits an invalid form' do
		scenario 'they see an error message' do
			link_title = 'The Example website'

			visit root_path
			click_on 'Submit a new link'
			fill_in 'link_title', with: link_title
			click_on 'Submit!'

			expect(page).to have_content "Url can't be blank"
		end


	end
end

