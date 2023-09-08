class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: 'https://last-airbender-api.fly.dev')
    response = conn.get("/api/v1/characters?affiliation=#{params[:nation]}&perPage=200")
    data = JSON.parse(response.body, symbolize_names: true)
    @data25 = data.take(25)
    @total = data.count
  end
end