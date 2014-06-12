require 'rails_helper'

feature "User signs up" do
  scenario "successful sign up" do
    visit '/'
    click_link "I'm Ready to TASTE!"
    fill_in "Name", with: "Sam"
    fill_in "Email", with: "sam@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    fill_in "Credit card", with: "1234"
    
    click_button "Sign up"
    current_path.should == dashboard_path

  end
end
