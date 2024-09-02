# frozen_string_literal: true

require "rails_helper"

RSpec.describe School, type: :model do
  subject(:instance) { build(:school) }

  describe "relations" do
    it { is_expected.to have_many(:school_classes) }
    it { is_expected.to have_many(:students) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:number) }
  end
end
