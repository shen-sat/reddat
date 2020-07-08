require 'rails_helper'

RSpec.feature 'user views homepage' do
	context 'user has submitted a link' do
		let!(:link) { create(:link) }

		scenario 'they see link on homepage' do
			visit root_path

			expect(page).to have_link link.title, href: link.url
		end
	end
end

