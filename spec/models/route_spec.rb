RSpec.describe Route, type: :model do

  it "has the right columns" do
    expect have_db_column(:name).of_type(:string).with_options({})
    expect have_db_column(:grade).of_type(:string).with_options({})
    expect have_db_column(:date).of_type(:datetime).with_options({})
    expect have_db_column(:description).of_type(:text).with_options({})
    expect have_db_column(:crag).of_type(:string).with_options({})
    expect have_db_column(:area).of_type(:string).with_options({})
  end

  specify("must only have the right columns") do
    expect(Route.column_names) =~ ["name", "grade", "description", "area", "crag", "date"]
  end

end
