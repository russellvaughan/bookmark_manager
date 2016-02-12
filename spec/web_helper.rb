def sign_up
	visit '/user/new'
	fill_in 'name',		with: 'Edu'
	fill_in 'mail',     with: 'hedu.delgado@gmail.com'
	fill_in 'password', with: 'Eduardo'
	click_button('Submit')
end