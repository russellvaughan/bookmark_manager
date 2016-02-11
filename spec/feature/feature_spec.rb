require 'spec_helper'
# User Story 1
# As a time-pressed user
# So that I can quickly go to web sites I regularly visit
# I would like to see a list of links on the homepage

feature "see links" do
  scenario "see links on homepage" do
  visit '/links'
  Link.create(url: 'http://www.google.com', title: 'Google')
  (expect(page).to have_content 'Google')
  end
end
