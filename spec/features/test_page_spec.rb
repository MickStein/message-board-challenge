require 'capybara/rspec'
require 'spec_helper'

feature 'views test page' do
  scenario 'routes to test page' do
    visit '/test'

    expect(page).to have_content('test')
  end
end
