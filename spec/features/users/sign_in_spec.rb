require_relative '../helpers/session'
include SessionHelpers

feature 'users signs in' do

  right_password = 'right'
  wrong_password = 'wrong'
  email = 'test@test.com'
  username = 'test78'

  before(:each) do
    User.create(email: email,
                password: right_password,
                password_confirmation: right_password,
                username: username)
  end

  scenario 'with correct credentials' do
    visit('/')
    expect(page).not_to have_content('Currently peeping as test78')
    sign_in(email, right_password)
    expect(page).to have_content('Currently peeping as test78')
  end

  scenario 'with incorrect credentials' do
    visit('/')
    sign_in(email, wrong_password)
    expect(page).not_to have_content('Currently peeping as test78')
  end
end