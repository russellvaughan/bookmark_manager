require '../app/models/link.rb'

# As a time-pressed user
# So that I can quickly go to web sites I regularly visit
# I would like to see a list of links on the homepage
feature 'Viewing links' do
	scenario 'I can see links on the homepage'	do
	
	Link.create(url: "www.makersacademy.com", title: "Makers Academy")
	visit '/links'
	expect(page.status_code).to eq 200

	expect(page).to have_content("Makers Academy")
	end
end

