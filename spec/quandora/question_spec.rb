RSpec.describe Quandora::Question do
  it "show" do
    response = Quandora.question.show('94114b76-9189-405e-87c3-6d0311840d05')
    expect(response.status).to eq(200)
  end

  it "view" do
    response = Quandora.question.view('94114b76-9189-405e-87c3-6d0311840d05')
    expect(response.status).to eq(200)
  end

  it "mlt" do
    response = Quandora.question.mlt('94114b76-9189-405e-87c3-6d0311840d05')
    expect(response.status).to eq(200)
  end

  it "answer" do
    args = {
      'content_type': 'markdown',
      'content': 'answer content'
    }
    response = Quandora.question.answer('94114b76-9189-405e-87c3-6d0311840d05', args)

    expect(response.status).to eq(201)
  end

  it "vote" do
    args = {
      'data': true
    }
    response = Quandora.question.vote('94114b76-9189-405e-87c3-6d0311840d05', args)

    expect(response.status).to eq(201)
  end

  context "comment apis" do
    it "create" do
      args = {
        'comment': 'new comment'
      }
      response = Quandora.question.comment('94114b76-9189-405e-87c3-6d0311840d05').create(args)
  
      expect(response.status).to eq(201)
    end

    it "update" do
      args = {
        'hash': 'hash',
        'comment': 'update comment'
      }
      response = Quandora.question.comment('94114b76-9189-405e-87c3-6d0311840d05').update(args)

      expect(response.status).to eq(201)
    end

    it "delete" do
      response = Quandora.question.comment('94114b76-9189-405e-87c3-6d0311840d05').delete('94114b76-9189-405e-87c3-6d0311840d05')
      expect(response.status).to eq(200)
    end
  end

  context "tag apis" do
    it "index" do
      response = Quandora.question.tag('94114b76-9189-405e-87c3-6d0311840d05').index
      expect(response.status).to eq(200)
    end

    it "set" do
      response = Quandora.question.tag('94114b76-9189-405e-87c3-6d0311840d05').set(['tag1', 'tag2', 'tag3'])
      expect(response.status).to eq(201)
    end

    it "add" do
      response = Quandora.question.tag('94114b76-9189-405e-87c3-6d0311840d05').add(['tag1', 'tag2', 'tag3'])
      expect(response.status).to eq(201)
    end
  end
end
