class Quandora::Comment
  def initialize(conn, api, id)
    @conn = conn
    @api = api
    @id = id
  end

  def create(args)
    args = args.stringify_keys

    body = {
      "type": "post-comment",
      "data": {
        "content": args["comment"]
      }
    }

    resp = @conn.post("#{@api}/#{@id}/comment") do |req|
      req.body = body.to_s
      req.headers['Content-Type'] = 'application/json'
    end
  end

  def update(args)
    args = args.stringify_keys

    body = {
      "type": "post-comment",
      "data": {
        "content": args["comment"],
        "hash": args["hash"]
      }
    }

    resp = @conn.put("#{@api}/#{@id}/comment") do |req|
      req.body = body.to_s
      req.headers['Content-Type'] = 'application/json'
    end
  end

  def delete(hash)
    resp = @conn.delete("#{@api}/#{@id}/comment/#{hash}")
  end
end
