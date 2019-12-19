# index

class Quandora::Activity < Quandora::Request
  def index(args = {})
    @params.merge!("userId": args["user_id"]) unless args.fetch('user_id', nil).nil?
    super
  end
end
