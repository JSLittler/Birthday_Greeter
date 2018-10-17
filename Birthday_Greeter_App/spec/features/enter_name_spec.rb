feature 'Enter names' do
  scenario 'submitting names' do
    visit('/greet')
    fill_in :enter_name, with: 'Gandalf'
    click_button 'Submit'
    expect(page).to have_content 'Gandalf'
  end
end

  feature 'Enter your date of birth' do
  scenario 'submitting date of birth' do
    visit('/greet')
    fill_in :enter_name, with: 'Gandalf'
    fill_in :bday, with: 01/01/0000
    click_button 'Submit'
    expect(page).to have_content '01/01/0000'
  end
end