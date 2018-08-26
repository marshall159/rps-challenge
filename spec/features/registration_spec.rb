require 'spec_helper'

# I would like to register my name before playing an online game

feature 'user registration' do
  scenario 'visit the homepage' do
    visit('/')
    expect(page).to have_content 'Register'
  end

  scenario 'registers a name' do
    visit('/')
    fill_in :user_name, with: 'Bob'
    click_button "Submit"
    expect(page).to have_content('Welcome, Bob')
  end

end