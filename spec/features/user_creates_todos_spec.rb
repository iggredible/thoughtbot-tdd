require 'rails_helper'

feature 'user creates todos' do
  scenario 'successfully' do
    sign_in
    creates_todo('My first todo')

    expect(page).to have_todo('My first todo')
  end
end

