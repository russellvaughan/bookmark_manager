feature 'Adding tags' do 

	scenario 'I can add a tag to a link' do 
		visit '/links/new'
		fill_in 'url',    with: 'http://www.zombo.com/'
		fill_in 'title',  with: 'This is Zombocom'
		fill_in 'tags',   with: 'weird'
		click_button 'Create link'
		link = Link.first
		expect(link.tags.map(&:name)).to include('weird')
	end
end
