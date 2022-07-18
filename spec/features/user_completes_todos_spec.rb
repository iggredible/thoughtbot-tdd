require 'rails_helper'

feature 'user completes todos' do
  scenario 'successfully' do
    sign_in

    # create_new_todo('My first todo')
    click_on 'Add a new todo'
    fill_in 'Title', with: 'My first todo'
    click_on 'Submit'

    # expect(page).to have_css '.todos li', text: 'My first todo'
    click_on 'Mark Complete'
    expect(page).to have_css '.todos li.completed', text: 'My first todo'
  end
end


