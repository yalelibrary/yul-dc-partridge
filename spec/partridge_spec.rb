RSpec.describe Partridge do
  it "has a version number" do
    expect(Partridge::VERSION).not_to be nil
  end

  xit "takes an oid and gives a path" do
    expect(oid_to_pairtree(1000000)).to eq("00/10/00/00")
  end
end
