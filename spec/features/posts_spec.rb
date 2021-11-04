require 'capybara/rspec'
require 'spec_helper'

feature 'views index page following submit' do
  scenario 'submits form and posts on posts page' do
    visit '/posts'

    expect(page).to have_content('First Post')
    expect(page).to have_content('Comments:')
  end
end

feature 'form entry onto page' do
  scenario 'Enters name and comments which appears on posts page' do
    visit '/'
    fill_in('name', with: 'John')
    fill_in('password', with: 'password')
    click_button('Submit')

    expect(page).to have_content('John')
    expect(page).to have_content('password')
  end
end