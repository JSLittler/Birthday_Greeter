def sign_in
  visit('/')
  fill_in :enter_name, with: 'Gandalf the Grey'
  fill_in :bday, with: "2018-10-21"
  click_button 'Submit'
end