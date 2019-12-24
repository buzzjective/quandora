class Quandora::Bases < Quandora::Request
  def list
    @api = "kb/"
    index
  end

  def questions(base_id, args = {})
    @api = "kb/#{base_id}/list"
    @params.merge!("q": args["q"]) unless args.fetch('q', nil).nil?
    @params.merge!("tag": args["tag"]) unless args.fetch('tag', nil).nil?
    @params.merge!("s": args["s"]) unless args.fetch('s', nil).nil?
    index
  end

  def mlt(base_id, args = {})
    @api = "kb/#{base_id}/mlt"
    @params.merge!("q": args["q"]) unless args.fetch('q', nil).nil?
    index
  end

  def ask(base_id, args = {})
    @api = "kb/#{base_id}/ask"
    index
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
