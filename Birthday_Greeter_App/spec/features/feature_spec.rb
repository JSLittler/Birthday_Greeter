  require_relative 'web_helpers'
  
  feature 'gets name & DOB' do
  scenario 'submitting date of birth' do
    sign_in
    expect(page).to have_content 'Gandalf the Grey'
    expect(page).to have_content "2018-10-21"
    expect(page).to have_content "It is 4 days, to your birthday"
  end
end