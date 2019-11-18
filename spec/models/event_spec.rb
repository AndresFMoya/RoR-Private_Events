# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:user) { User.create(name: 'Laura', email: 'laura@example.com') }
  let(:event) { user.events.build(description: "Laura's first event") }

  context 'Validations' do
    it 'should have a description present' do
      expect(event).to be_valid
    end

    it 'should have a description present' do
      event = user.events.build(description: '  ')
      expect(event).to_not be_valid
    end

    it 'should have a creator' do
      event = Event.create(description: 'Event without a creator')
      expect(event).to_not be_valid
    end
  end

  context 'Associations' do
    it 'should have one creator' do
      event = Event.reflect_on_association(:creator)
      expect(event.macro).to eq(:belongs_to)
    end

    it 'should have many attendees' do
      event = Event.reflect_on_association(:attendees)
      expect(event.macro).to eq(:has_many)
    end
  end
end
