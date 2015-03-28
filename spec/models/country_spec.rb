require 'rails_helper'

RSpec.describe Country, type: :model do

  before { @country = build(:country) }

  it "has a valid fatory" do
    expect(build(:country)).to be_valid
  end

  it "has the right columns" do
    expect have_db_column(:name).of_type(:string).with_options({})
  end

  specify("must only have the right columns") do
    expect(Country.column_names).to match_array(["name", "created_at", "id", "updated_at"])
  end

  it { expect(@country).to validate_presence_of(:name) }

  it { expect(@country).to have_many(:routes) }

end
