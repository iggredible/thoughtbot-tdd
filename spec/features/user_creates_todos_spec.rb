require 'rails_helper'

feature 'user creates todos' do
  scenario 'successfully' do
    # visit root_path
    sign_in

    click_on 'Add a new todo'
    fill_in 'Title', with: 'My first todo'
    click_on 'Submit'

    expect(page).to have_css '.todos li', text: 'My first todo'
  end
end

