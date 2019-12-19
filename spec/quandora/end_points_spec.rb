RSpec.describe Quandora::EndPoints do
  it "index" do
    response = Quandora.end_points.index
    expect(response.status).to eq(200)
  end
end
