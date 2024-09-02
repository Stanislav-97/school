# frozen_string_literal: true

require "rails_helper"

RSpec.describe SchoolClass, type: :model do
  subject(:instance) { build(:school_class) }

  describe "relations" do
    it { is_expected.to belong_to(:school) }
    it { is_expected.to have_many(:students) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:number) }
    it { is_expected.to validate_presence_of(:letter) }
    it { is_expected.to validate_presence_of(:students_count) }
  end
end
