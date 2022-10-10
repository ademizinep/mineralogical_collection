require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'create' do
    it 'test name' do
      subject.assign_attributes(name: 'teste')
      expect(subject.name).to eq('teste')
    end

    it { is_expected.to validate_length_of(:name).is_at_most(64) }
  end
end
