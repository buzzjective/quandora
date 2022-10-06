class Quandora::Tag
  def initialize(conn, api, id)
    @conn = conn
    @api = api
    @id = id
  end

  def index(args={})
    args = args.stringify_keys

    query = {}
    query.merge!("q": args["q"]) unless args.fetch('q', nil).nil?
    query.merge!("s": args["s"]) unless args.fetch('s', nil).nil?
    query.merge!("o": args["o"]) unless args.fetch('o', nil).nil?
    query.merge!("l": args["l"]) unless args.fetch('l', nil).nil?

    resp = @conn.get("#{@api}/#{@id}/tags") do |req|
      req.params = query
      req.headers['Content-Type'] = 'application/json'
    end
  end

  def show(tag_name, query = nil)
    resp = @conn.get("#{@api}/#{@id}/tags/#{tag_name}/#{query}")
  end

  def create(args)
    args = args.stringify_keys

    body = {
      "type": "tag-content",
      "data": {
        "name": args['name'],
        "category": nil,
        "location": nil,
        "url": args['url'],
        "content": args['content']
      }
    }

    resp = @conn.post("#{@api}/#{@id}/tags") do |req|
      req.body = body.to_s
      req.headers['Content-Type'] = 'application/json'
    end
  end

  def update(args)
    args = args.stringify_keys

    body = {
      "type": "tag-content",
      "data": {
        "content": args["content"],
        "uid": args["uid"]
      }
    }

    resp = @conn.put("#{@api}/#{@id}/tags") do |req|
      req.body = body.to_s
      req.headers['Content-Type'] = 'application/json'
    end
  end

  def delete(tag_name)
    resp = @conn.delete("#{@api}/#{@id}/tags/#{tag_name}")
  end

  def set(tags)
    tags = tags.join(',') if tags.is_a? Array
    resp = @conn.post("/#{@api}/#{@id}/tags/#{tags}") do |req|
      req.headers['Content-Type'] = 'application/json'
    end
  end

  def add(tags)
    tags = tags.join(',') if tags.is_a? Array
    resp = @conn.put("/#{@api}/#{@id}/tags/#{tags}") do |req|
      req.headers['Content-Type'] = 'application/json'
    end
  end
end
