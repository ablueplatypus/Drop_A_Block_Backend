class Api::V1::StatsController < ApplicationController

  def index
    @stats = Stat.all
    render json: @stats
  end

  def create
    @stat = Stat.create(stat_params)
    if @stat.valid?
      render json: @stat, status: :created
    else
      render json: {errors: @stat.error.full_messages}, status: :unprocessible_entity
    end
  end


  private

  def stat_params
    params.permit(:high_score, :line_clear)
  end

end
