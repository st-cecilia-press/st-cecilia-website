require 'rails_helper'
RSpec.describe Composer, type: :model do
  it { should have_many(:pieces)}
end

RSpec.describe Composer, "validations" do
  it { is_expected.to validate_presence_of(:name) }
end
