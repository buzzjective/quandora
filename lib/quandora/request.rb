class Quandora::Request
  attr_accessor :api, :params

  def initialize(conn, api, params)
    @conn = conn
    @api = api
    @params = params
  end

  def index(args = {})
    args = args.stringify_keys

    @params.merge!("o": args["o"]) unless args.fetch('o', nil).nil?
    @params.merge!("l": args["l"]) unless args.fetch('l', nil).nil?

    resp = @conn.get(@api.to_s) do |req|
      req.params = @params
      req.headers['Content-Type'] = 'application/json'
    end
  end

  def show(id, args = {})
    args = args.stringify_keys

    resp = @conn.get("#{@api}/#{id}") do |req|
      req.params = @params
      req.headers['Content-Type'] = 'application/json'
    end
  end
end
