RSpec.describe Quandora::Badges do
  it "index" do
    response = Quandora.badges.index
    expect(response.status).to eq(200)
  end
end
