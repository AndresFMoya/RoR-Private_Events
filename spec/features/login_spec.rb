# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Logins', type: :feature do
  before :each do
    User.create(name: 'User', email: 'User@example.com')
  end

  scenario 'User Log in' do
    visit '/login'
    fill_in 'Name', with: 'User'
    click_button 'Sign in'
    expect(page).to have_text('Events')
  end

  scenario 'Invalid User not Log in' do
    visit '/login'
    fill_in 'Name', with: 'InvalidUser'
    click_button 'Sign in'
    expect(page).to have_text('Invalid Username')
  end
end
