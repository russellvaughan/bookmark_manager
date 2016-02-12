# As a time-pressed user
# So that I can organise my many links into different categories for ease of search
# I would like to tag links in my bookmark manager

feature 'Adding Tags' do
	scenario 'I would like to add tags to my links'	do

	  visit('/links')
    click_link('add_link')
    fill_in('title', with: 'google')
    fill_in('URL', with: 'http://www.google.com')
    fill_in('tags', with:'search')
    click_button('Submit')
    within 'ul#links' do
    link = Link.first
   	expect(link.tags.map(&:name)).to include('search')
   end
	end
end


# As a time-pressed user
# So that I can quickly find links on a particular topic
# I would like to filter links by tag

# feature 'filitering links' do
#   scenario 'I want to filter links on the homepage.'  do
#     visit ('/tags/bubbles')
#     expect(link.map(&:name)).to include('search')
#    end
#   end

