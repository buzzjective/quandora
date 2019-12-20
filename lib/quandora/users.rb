class Quandora::Users < Quandora::Request
  # API LIST: Me, Index, Show
  def me
    resp = @conn.get("#{@api}/me")
  end

  def create(args)
    body = {
      "type": "post-user",
      "data": {
        "email": args["email"],
        "password": args["password"],
        "firstName": args["first_name"],
        "lastName": args["last_name"],
        "title": args["title"],
        "isManager": args["is_manager"],
        "aliases": args["aliases"],
        "groups": args["groups"]
      }
    }

    resp = @conn.post(@api) do |req|
      req.body = body.to_s
      req.headers['Content-Type'] = 'application/json'
    end
  end
end
