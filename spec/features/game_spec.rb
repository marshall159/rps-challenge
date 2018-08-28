require 'spec_helper'

# I would like to be able to play rock/paper/scissors

feature 'playing a game' do
  scenario 'user told to choose their move' do
    sign_in_and_play
    expect(page).to have_content('Bob, choose your move')
  end

  scenario 'user given options of rock, paper and scissors' do
    sign_in_and_play
    expect(page).to have_content('Rock')
    expect(page).to have_content('Paper')
    expect(page).to have_content('Scissors')
  end

  scenario 'user can choose one option' do
    sign_in_and_play
    click_on('Rock')
    expect(page).to have_content('Bob has chosen Rock')
    expect(page).not_to have_content('Paper')
    expect(page).not_to have_content('Scissors')
  end
end
