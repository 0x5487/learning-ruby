require 'securerandom'

class EventsController < ApplicationController
  def index
    logger.debug "Hi Jason #{SecureRandom.uuid}"

    @movie = Movie.new('yolo1', 1980)

    render json: @movie, status: 201
  end

  def error
    logger.error 'oops....something went wrong'

    @movie = Movie.new('yolo1', 1980)

    render json: @movie, status: 201
  end
end
