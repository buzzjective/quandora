class Quandora::Answer < Quandora::Request
  def vote(answer_id, args)
    body = {
      "type": "boolean",
      "data": args["vote"]
    }

    resp = @conn.post("a/#{id}/vote") do |req|
      req.body = body.to_s
      req.headers['Content-Type'] = 'application/json'
    end
  end

  def accept(answer_id, args)
    body = {
      "type": "boolean",
      "data": args["accept"]
    }

    resp = @conn.post("a/#{id}/accept") do |req|
      req.body = body.to_json
      req.headers['Content-Type'] = 'application/json'
    end
  end

  def comment(answer_id)
    Comment.new(@conn, "a", answer_id)    
  end
end
