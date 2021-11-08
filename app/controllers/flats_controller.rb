require "open-uri"
require "json"

class FlatsController < ApplicationController

  def index
    #get the url for the JSON
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    #json parse the url
    @flats = JSON.parse(open(url).read)
    #save it in a @flats variable
  end

  def show
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    #json parse the url
    flats = JSON.parse(open(url).read)
    #finding the flat with the right id
    @flat = flats.find{|flat| params[:id].to_i == flat["id"]}
  end

  #Ex:- add_index("admin_users", "username")
end
