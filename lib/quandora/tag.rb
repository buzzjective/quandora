class Quandora::Tag
  def initialize(conn, api, id)
    @conn = conn
    @api = api
    @id = id
  end

  def index
    resp = @conn.get("#{@api}/#{@id}/tags")
  end

  def show(tag_name, query = nil)
    resp = @conn.get("#{@api}/#{@id}/tags/#{tag_name}/#{query}")
  end

  def create(args)
    body = {
      "type": "tag-content",
      "data": {
        "name": args[:name],
        "category": nil,
        "location": nil,
        "url": args[:url],
        "content": args[:content]
      }
    }

    resp = @conn.post("#{@api}/#{@id}/tags") do |req|
      req.body = body.to_s
      req.headers['Content-Type'] = 'application/json'
    end
  end

  def update(args)
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
