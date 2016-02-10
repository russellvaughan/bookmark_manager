# As a time-pressed user
# So that I can save a website
# I would like to add the site's address and title to my bookmark manager

feature 'create  new links' do

  scenario 'add a new link' do
    visit('/links')
    click_link('add_link')
    fill_in('title', with: 'google')
    fill_in('URL', with: 'http://www.google.com')
    click_button('Submit')
    expect(page).to have_content('g')
  end
end
