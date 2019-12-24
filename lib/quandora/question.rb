# show

class Quandora::Question < Quandora::Request
  def detail(question_id)
    @api = "q/"
    show("#{question_id}")
  end

  def view(question_id, args = {})
    @api = "q/"
    show("#{question_id}/view")
  end

  def mlt(question_id, args = {})
    @api = "q/"
    show("#{question_id}/mlt")
  end

  def answer(question_id, args)
    body = {
      "type": "post-answer",
      "data": {
        "content": args["content"],
        "contentType": args["content_type"]
      }
    }
    resp = @conn.post("q/#{question_id}/answer") do |req|
      req.body = body.to_json
      req.headers['Content-Type'] = 'application/json'
    end
  end

  def vote(question_id, args)
    body = {
      "type": "boolean",
      "data": args["vote"]
    }

    resp = @conn.post("q/#{question_id}/vote") do |req|
      req.body = body.to_json
      req.headers['Content-Type'] = 'application/json'
    end
  end

  def comment(question_id)
    Quandora::Comment.new(@conn, "q", question_id)    
  end

  def tag(answer_id)
    Quandora::Tag.new(@conn, "q", answer_id)    
  end
end
