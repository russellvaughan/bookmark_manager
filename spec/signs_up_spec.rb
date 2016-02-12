require 'web_helper'

feature 'signing up' do 
	scenario 'sign up' do 
		expect {sign_up}.to change(User, :count).by(1)
		expect(page).to have_content('Welcome Edu')
		expect(User.first.mail). to eq('hedu.delgado@gmail.com')
	end
end
