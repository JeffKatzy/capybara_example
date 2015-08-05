class GithubWrapper
  def client
    @client ||= Octokit::Client.new(:access_token => '37c96adc22fc747140e8ad47f4a5421ff905dceb')
  end

  def all
    client.gists
  end

  def repos
    @repos ||= client.repos
  end
end