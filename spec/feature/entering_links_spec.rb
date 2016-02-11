require 'spec_helper'

# As a time-pressed user
# So that I can save a website
# I would like to add the site's address and title to my bookmark manager

feature 'add site address and title' 	do

	scenario 'to spend less time remembering a website, add site\'s address to my bookmark manager' do 
	visit '/links'
	fill_in 'url', with: 'http://www.bbc.co.uk'
	fill_in 'title', with: 'BBC News'
	click_button('Save Link')	
	expect(page).to have_content?('BBC News')
	end

end 