

# As a time-pressed user
# So that I can organise my many links into different categories for ease of search
# I would like to tag links in my bookmark manager

feature 'Adding Tags' do


  before(:each) do
    Link.create(url: 'http://www.google.com', title: 'Google', tags: [Tag.first_or_create(name: 'search')])
    Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy', tags: [Tag.first_or_create(name: 'education')])
    Link.create(url: 'http://www.google.com', title: 'Google', tags: [Tag.first_or_create(name: 'search')])
    Link.create(url: 'http://www.zombo.com', title: 'This is Zombocom', tags: [Tag.first_or_create(name: 'bubbles')])
    Link.create(url: 'http://www.bubble-bobble.com', title: 'Bubble Bobble', tags: [Tag.first_or_create(name: 'bubbles')])
  end

    scenario 'I would like to add a tag to my links'	do

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
    # As a time-pressed user
    # So that I can quickly find links on a particular topic
    # I would like to filter links by tag

    scenario 'I can filter links by tag' do
      visit '/tags/bubbles'
      expect(page.status_code).to eq(200)
      within 'ul#links' do
        
        expect(page).not_to have_content('Makers Academy')
        expect(page).not_to have_content('Code.org')
        expect(page).to have_content('This is Zombocom')
        expect(page).to have_content('Bubble Bobble')
    end
  end
end

feature 'Adding multiple Tags' do

  scenario 'I would like to add multplie tags to my links'  do

      visit('/links')
      click_link('add_link')
      fill_in('title', with: 'sport')
      fill_in('URL', with: 'http://www.bbc.co.uk')
      fill_in('tags', with:'sport news weather')
      click_button('Submit')
      link = Link.first
      within 'ul#links' do
      expect(link.tags.map(&:name)).to include('sport','news','weather')
     end
    end
end
