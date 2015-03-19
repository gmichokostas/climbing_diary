feature "Add new route" do
	scenario "with  valid credentials" do
		visit new_route_path
		fill_in 'Route name', with: 'name'
		fill_in 'Country', with: 'country'
		fill_in 'Area', with: 'area'
		click_button 'Create Route'
		expect(page).to have_content "Route succesfully added"
	end
end
