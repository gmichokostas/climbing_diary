feature "Add new route" do
	scenario "with  valid credentials" do
		visit new_country_path
		fill_in 'Name', with: 'name'
		click_button('Create Country')
		expect(current_path).to eq countries_path
		fill_in 'Name', with: 'name'
		fill_in 'Area', with: 'area'
		click_button('Create Route')
		expect(page).to have_content "Route succesfully added"
	end
end
