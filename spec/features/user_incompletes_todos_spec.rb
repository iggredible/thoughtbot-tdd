require 'rails_helper'

feature 'user incompletes todos' do
  scenario 'successfully' do
    sign_in
    creates_todo('My first todo')

    click_on 'Mark Complete'
    click_on 'Mark Incomplete'

    expect(page).not_to have_completed_todo('My first todo')
    expect(page).to have_todo('My first todo')
  end
end

