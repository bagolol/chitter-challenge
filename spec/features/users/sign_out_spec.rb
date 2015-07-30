require_relative '../helpers/session'
include SessionHelpers

feature 'user signs out' do

  password = 'right'
  email = 'test@test.com'
  username = 'test78'

  before(:each) do
    User.create(email: email,
                password: password,
                password_confirmation: password)
  end
  scenario 'a logged user signs out' do
    sign_in(email, password)
    click_button 'Sign out'
    expect(page).to have_content('Good bye!')
    expect(page).not_to have_content('Currently peeping as test78')
  end
end