require 'spec_helper'

# I would like to register my name before playing an online game

feature 'user registration' do
  scenario 'visit the homepage' do
    visit('/')
    expect(page).to have_content('Register')
  end

  scenario 'registers and displays name' do
    sign_in_and_play
    expect(page).to have_content('Welcome, Bob')
  end
end
