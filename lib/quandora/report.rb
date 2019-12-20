class Quandora::Report
  def initialize(conn, api, id)
    @conn = conn
    @api = api
    @id = id
  end

  def asked
    resp = @conn.get("#{@api}/#{@id}/report/asked")
  end

  def users_reputation_change
    resp = @conn.get("#{@api}/#{@id}/report/usersByReputationChange")
  end

  def most_voted_question
    resp = @conn.get("#{@api}/#{@id}/report/mostVotedQuestion")
  end
end