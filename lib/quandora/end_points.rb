class Quandora::EndPoints < Quandora::Request
  def index(args = {})
    args = args.stringify_keys

    @api = ""
    super
  end
end
