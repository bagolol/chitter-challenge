require_relative '../helpers/session'
require_relative '../helpers/peep'
include SessionHelpers
include PeepHelpers

feature 'a user updates his status with a peep' do

  password = 'right'
  email = 'test@test.com'
  username = 'test78'

  before(:each) do
    User.create(email: email,
                password: password,
                password_confirmation: password,
                username: username)
  end
  scenario 'a user adds a peep when logged in' do

    sign_in(email, password)
    expect(page).to have_content('Currently peeping as test78')
    write_peep('hello world')
    expect(Peep.count).to eq(1)
    peep = Peep.first
    time = peep.created_at.strftime("%H:%M, %d/%m/%Y")
    within '.peep' do
      expect(page).to have_css('div.description', text: 'hello world')
      expect(page).to have_css('span.time', text: time)
      expect(page).to have_css('span.username', text: 'test78')
    end
  end

  scenario 'writing a peep when logged out and receiving an error message' do
    visit('/')
    expect { write_peep }.to change(User, :count).by(0)
    expect(page).to have_content('You must be logged in to post a peep')
  end

  scenario 'the latest peep is displayed' do
    sign_in(email, password)
    write_peep('hello world')
    write_peep('hello my friends')
    peep = Peep.first
    expect(page).to have_css('div.description', text: 'hello my friends')
  end
end
