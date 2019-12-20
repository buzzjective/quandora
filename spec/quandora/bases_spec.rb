RSpec.describe Quandora::Bases do
  it "questions" do
    response = Quandora.bases.questions('94114b76-9189-405e-87c3-6d0311840d05')
    expect(response.status).to eq(200)
  end

  it "show" do
    response = Quandora.bases.show('94114b76-9189-405e-87c3-6d0311840d05')
    expect(response.status).to eq(200)
  end

  it "ask" do
    response = Quandora.bases.ask('94114b76-9189-405e-87c3-6d0311840d05')
    expect(response.status).to eq(200)
  end

  it "follow" do
    response = Quandora.bases.ask('94114b76-9189-405e-87c3-6d0311840d05')
    expect(response.status).to eq(200)
  end

  it "mlt" do
    response = Quandora.bases.mlt('94114b76-9189-405e-87c3-6d0311840d05')
    expect(response.status).to eq(200)
  end

  context "tag apis" do
    it "index" do
      response = Quandora.bases.tag('94114b76-9189-405e-87c3-6d0311840d05').index
      expect(response.status).to eq(200)
    end

    it "show" do
      response = Quandora.bases.tag('94114b76-9189-405e-87c3-6d0311840d05').show('tag_name')
      expect(response.status).to eq(200)
    end

    it "create" do
      args = {
        name: 'name',
        url: 'url',
        content: 'content',
      }

      response = Quandora.bases.tag('94114b76-9189-405e-87c3-6d0311840d05').create(args)
      expect(response.status).to eq(201)
    end

    it "update" do
      args = {
        uid: 'uid',
        content: 'content',
      }

      response = Quandora.bases.tag('94114b76-9189-405e-87c3-6d0311840d05').update(args)
      expect(response.status).to eq(201)
    end

    it "delete" do
      response = Quandora.bases.tag('94114b76-9189-405e-87c3-6d0311840d05').delete('tag_name')
      expect(response.status).to eq(200)
    end
  end
end
