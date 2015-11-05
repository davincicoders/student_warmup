require 'rails_helper'

RSpec.describe Pupil, type: :model do
  it { is_expected.to validate_presence_of(:first_name) }
  it { is_expected.to validate_presence_of(:last_name) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_inclusion_of(:gender).in_array(%w(m f M F)) }
  it { is_expected.to validate_numericality_of(:age).is_greater_than(12).is_less_than(19) }
end
