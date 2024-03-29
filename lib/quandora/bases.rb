class Quandora::Bases < Quandora::Request
  def list
    @api = "kb/"
    index
  end

  def questions(base_id, args = {})
    args = args.stringify_keys

    @api = "kb/#{base_id}/list"
    @params.merge!("o": args["o"]) unless args.fetch('o', nil).nil?
    @params.merge!("l": args["l"]) unless args.fetch('l', nil).nil?
    @params.merge!("q": args["q"]) unless args.fetch('q', nil).nil?
    @params.merge!("tag": args["tag"]) unless args.fetch('tag', nil).nil?
    @params.merge!("s": args["s"]) unless args.fetch('s', nil).nil?
    index
  end

  def mlt(base_id, args = {})
    args = args.stringify_keys

    @api = "kb/#{base_id}/mlt"
    @params.merge!("q": args["q"]) unless args.fetch('q', nil).nil?
    index
  end

  def ask(base_id, args = {})
    args = args.stringify_keys

    body = {
      "type": "post-question",
      "data": {
        "title": args["title"],
        "content": args["content"],
        "contentType": args["content_type"] || "markdown"
      }
    }

    resp = @conn.post("kb/#{base_id}/ask") do |req|
      req.body = body.to_json
      req.headers['Content-Type'] = 'application/json'
    end
  end

  def follow(base_id, args = {})
    @api = "kb/#{base_id}/follow"
    index
  end

  def tag(kb_id)
    Quandora::Tag.new(@conn, "kb", kb_id)
  end

  def report(kb_id)
    Quandora::Report.new(@conn, "kb", kb_id)
  end
end
