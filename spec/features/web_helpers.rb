def sign_in_and_play
  visit('/')
  fill_in :user_name, with: 'Bob'
  click_button 'Submit'
end