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
    page.should have_content "We hope you enjoy auTASTIC!"
    page.should_not have_link("I'm Ready to TASTE!")
  end

  scenario "failed signup" do
    User.create(email: "joe@example.com", name: "joe", password: "password", password_confirmation: "password")
    visit '/'
    click_link "I'm Ready to TASTE!"
    fill_in "Email", with: "joe@example.com"
    fill_in "Name", with: "joe"
    fill_in "Password", with: "mypassword"
    fill_in "Password confirmation", with: "notthesame"

    click_button "Sign up"
    #page.should_not have_content "Welcome to "
    page.should have_content "Your account could not be created."

    page.should have_error("already exists", on: "Email")
    page.should have_error("doesn't match password", on:"Password")
  end

end
