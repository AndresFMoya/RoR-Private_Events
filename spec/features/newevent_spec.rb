# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Newevents', type: :feature do
  before :each do
    @user = User.create(name: 'User', email: 'User@example.com')
    @event = @user.events.build(description: 'Test Event')
  end

  scenario 'User Create an Event' do
    visit '/login'
    fill_in 'Name', with: 'User'
    click_button 'Sign in'
    visit '/events/new'
    fill_in 'Description', with: 'This is my event'
    expect(page).to have_text(@user.name)
  end
end
