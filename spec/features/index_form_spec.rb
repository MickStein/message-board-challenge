require 'capybara/rspec'
require 'spec_helper'

feature 'views index page' do
  scenario 'routes to index page' do
    visit '/'

    expect(page).to have_content('Name')
    expect(page).to have_content('Content')
  end
end

feature 'Prints name via form' do
  scenario 'Enters name in form and submits' do
    visit '/'
    fill_in('name', with: 'John')
    fill_in('password', with: 'password')
    click_button('Submit')

    expect(page).to have_content('John')
    expect(page).to have_content('password')
  end
end