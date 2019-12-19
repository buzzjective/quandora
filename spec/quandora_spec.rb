RSpec.describe Quandora do
  it "has a version number" do
    expect(Quandora::VERSION).not_to be nil
  end

  context "check present api list" do
    it "activity api" do
      expect(Quandora.activity).to be_a(Quandora::Activity)
    end

    it "question api" do
      expect(Quandora.question).to be_a(Quandora::Question)
    end

    it "badges api" do
      expect(Quandora.badges).to be_a(Quandora::Badges)
    end

    it "end_points api" do
      expect(Quandora.end_points).to be_a(Quandora::EndPoints)
    end

    it "report api" do
      expect(Quandora.report).to be_a(Quandora::Report)
    end

    it "users api" do
      expect(Quandora.users).to be_a(Quandora::Users)
    end
  end

  it "check not present api" do
    expect {
      Quandora.test_api
    }.to raise_error(NoMethodError)
  end
end
