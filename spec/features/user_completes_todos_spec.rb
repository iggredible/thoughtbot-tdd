require 'rails_helper'

feature 'user completes todos' do
  scenario 'successfully' do
    sign_in

    creates_todo('My first todo')

    click_on 'Mark Complete'
    expect(page).to have_completed_todo('My first todo')
  end
end
