RSpec.describe Quandora::Activity do
  it "index" do
    response = Quandora.activity.index
    expect(response.status).to eq(200)
  end
end
