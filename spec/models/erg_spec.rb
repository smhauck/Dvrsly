require 'rails_helper'

describe Erg do
  describe 'associations' do
    it { should have_many :memberships }
    it { should have_many :users }
  end
end

