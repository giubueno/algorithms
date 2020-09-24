# frozen_string_literal: true

require 'spec_helper'
require_relative '../santa'

describe SecretSanta do
  let(:participants) { ['Mario', 'Maria', 'Mary'] }
  let(:santa) { described_class.new(participants) }

  describe '.gift_target' do
    it 'never returns the same participant' do
      participants.each{ |p| expect(santa.friend(p)).not_to eq(p) }
    end
  end
end
