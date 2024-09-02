# frozen_string_literal: true

require "rails_helper"

RSpec.describe Student, type: :model do
  subject(:instance) { build(:student) }

  describe "relations" do
    it { is_expected.to belong_to(:school) }
    it { is_expected.to belong_to(:school_class) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:surname) }
  end
end
