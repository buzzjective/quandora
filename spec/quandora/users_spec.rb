RSpec.describe Quandora::Users do
  it "index" do
    response = Quandora.users.index
    expect(response.status).to eq(200)
  end

  it "show" do
    response = Quandora.users.show('94114b76-9189-405e-87c3-6d0311840d05')
    expect(response.status).to eq(200)
  end

  it "me" do
    response = Quandora.users.me
    expect(response.status).to eq(200)
  end
end
