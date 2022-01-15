# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :email }

    describe 'uniqueness' do
      before { create(:user) }

      it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
    end
  end
end
