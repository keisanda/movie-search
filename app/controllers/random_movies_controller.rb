require 'net/http'
require 'json'
require 'active_record'

class RandomMoviesController < ApplicationController
  before_action :set_random_movie, only: [:show, :update, :destroy]

  # GET /random_movies
  def index

    page = rand(499) + 1

    search_uri = URI.parse("https://api.themoviedb.org/3/movie/popular?api_key=bf0d7c6efc42239e015ce8ad0a26294f&language=#{params[:language]}&page=#{page}")
    search_res = JSON.parse(Net::HTTP.get(search_uri))

    movie = search_res["results"][rand(19)]

    provider_uri = URI.parse("https://api.themoviedb.org/3/movie/#{movie["id"]}/watch/providers?api_key=bf0d7c6efc42239e015ce8ad0a26294f")
    provider_res = JSON.parse(Net::HTTP.get(provider_uri))

    provider = provider_res["results"][RandomMovie.countries["#{params[:language]}"]]

    movie["providers"] = provider

    render json: movie
  end

end
